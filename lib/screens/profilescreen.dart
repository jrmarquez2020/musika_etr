import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:musika/screens/auth/login.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late String _username;

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
              backgroundImage: AssetImage('assets/profile_pic.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              _username,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
              color: Colors.white),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              
              onPressed: () {
                
              },
              child: Text('Edit Profile',style: TextStyle(
                color: Colors.white,
              ),),
              style: ElevatedButton.styleFrom(
                          backgroundColor:Color.fromRGBO(244, 55, 109, 1),
                        ),
              
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
              _signOut(context);
              },
              child: Text('Sign Out',style: TextStyle(
                color: Colors.red,
              ),),
               style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.white,
                        ),
            ),
          ],
        ),
      ),
      ),
       
    );
  }
}


