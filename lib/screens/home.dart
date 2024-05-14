import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class HomePageScreen extends StatefulWidget {
  HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  PageController _pageController = PageController(initialPage: 0);
  late String _username;
  int _currentPage = 0;

  List<String> images = [
    'assets/images/poster1.png',
    'assets/images/poster1.png',

  ];

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
              Color.fromRGBO(24, 29, 40, 1),
            ],
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
  padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
  child: Row(
    children: <Widget>[
      Expanded(
        child: Row(
          children: [
            Text(
              'Hi, ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Text(
              _username,
              style: TextStyle(
                color: Color.fromRGBO(244, 55, 109, 1),
                fontSize: 25,
              ),
            ),
            SizedBox(width: 10), // Add spacing between the username and the image
            Image.asset(
              'assets/images/musika.png', 
              width: 40, 
              height: 40, 
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            // Add functionality to handle tap on avatar
          },
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
        ),
      ),
    ],
  ),
),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Learn Music',
                  style: TextStyle(
                    color: Colors.grey[350],
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            Gap(20),
            Expanded(
  child: PageView.builder(
    controller: _pageController,
    onPageChanged: (int page) {
      setState(() {
        _currentPage = page;
      });
    },
    itemCount: images.length,
    itemBuilder: (context, index) {
      return Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15), // Adjust border radius as needed
          child: Image.asset(
            images[index],
            fit: BoxFit.contain,
          ),
        ),
      );
    },
  ),
),
            SizedBox(height: 20.0),
          Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      for (int i = 0; i < images.length; i++)
        Container(
          width: 8,
          height: 8,
          margin: EdgeInsets.symmetric(horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == i ? Colors.white : Colors.grey,
          ),
        ),
    ],
  ),
),
            SizedBox(height: 20.0),
            // ElevatedButton(
            //   onPressed: () {
            //     // Navigate to another screen
            //   },
            //   child: Text('Navigate'),
            // ),
          ],
        ),
      ),
    );
  }
}
