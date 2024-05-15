import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
      future: FirebaseAuth.instance.authStateChanges().first,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        }

        if (!snapshot.hasData || snapshot.data == null) {
          return Scaffold(body: Center(child: Text('User not logged in')));
        }

        return UserDetail(userId: snapshot.data!.uid);
      },
    );
  }
}
class UserDetail extends StatelessWidget {
  final String userId;

  const UserDetail({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 23,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance.collection('users').doc(userId).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: Text('No data found'));
          }

          var data = snapshot.data!.data() as Map<String, dynamic>;

          return SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'), // Provide the path to your profile picture
                  ),
                ),
                SizedBox(height: 20),
                UserProfileItem(label: 'Name', value: data['name']),
                UserProfileItem(label: 'Address', value: data['address']),
                UserProfileItem(label: 'Birthdate', value: data['birthdate']),
                UserProfileItem(label: 'Email', value: data['email']),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProfileScreen(userId: userId, userData: data),
                      ),
                    );
                  },
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Color.fromRGBO(244, 55, 109, 1),),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


class UserProfileItem extends StatelessWidget {
  final String label;
  final String value;

  const UserProfileItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$label: $value'),
    );
  }
}

class EditProfileScreen extends StatefulWidget {
  final String userId;
  final Map<String, dynamic> userData;

  const EditProfileScreen({required this.userId, required this.userData});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _nameController;
  late TextEditingController _addressController;
  late TextEditingController _birthdateController;
  late TextEditingController _emailController;
  final _formKey = GlobalKey<FormState>(); // Add a GlobalKey for the Form

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.userData['name']);
    _addressController = TextEditingController(text: widget.userData['address']);
    _birthdateController = TextEditingController(text: widget.userData['birthdate']);
    _emailController = TextEditingController(text: widget.userData['email']);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _birthdateController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 23,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Assign the GlobalKey to the Form
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _birthdateController,
                decoration: InputDecoration(labelText: 'Birthdate'),
                validator: (value) {
                  // Add validation logic for birthdate if needed
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  if (!EmailValidator.validate(value)) {
                    return 'Invalid email format';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Address'),
                validator: (value) {
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    FirebaseFirestore.instance.collection('users').doc(widget.userId).update({
                      'name': _nameController.text,
                      'address': _addressController.text,
                      'birthdate': _birthdateController.text,
                      'email': _emailController.text,
                    });
                    Navigator.pop(context);
                  }
                },
                child: Text('Save',style: TextStyle(color: Color.fromRGBO(244, 55, 109, 1),),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
