import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:musika/screens/auth/edit.dart';
import 'package:musika/screens/auth/login.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late String _username;
 String _profilePictureUrl = ''; 
  @override
  void initState() {
    super.initState();
    _username = '';
    _loadUserData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
  }
  
Future<void> _loadUserData() async {
  final User? user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await FirebaseFirestore.instance.collection('users').doc(user.uid).get();

      if (mounted) {
        setState(() {
          _username = snapshot.data()?['name'] ?? 'Unknown User';
          _profilePictureUrl = snapshot.data()?['profile_picture'] ?? '';
        });
      }
    } catch (error) {
      print('Error loading user data: $error');
    }
  }
}


 @override
Widget build(BuildContext context) {

  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(32, 40, 55, 1),
            Color.fromRGBO(24, 29, 40, 1)
          ],
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: _profilePictureUrl.isNotEmpty
                  ? NetworkImage(_profilePictureUrl)
                  : null,
            ),
            SizedBox(height: 20),
            Text(
              _username,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserProfileScreen(),
                  ),
                );
              },
              icon: Icon(Icons.person, color: Colors.white,),
              label: Text(
                'My Profile',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(244, 55, 109, 1),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                _signOut(context);
              },
              icon: Icon(Icons.exit_to_app, color: Color.fromRGBO(244, 55, 109, 1)),
              label: Text(
                'Sign Out',
                style: TextStyle(color: Color.fromRGBO(244, 55, 109, 1)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
}