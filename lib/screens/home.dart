import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gap/gap.dart';
import 'package:musika/screens/info_video.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  PageController _pageController = PageController(initialPage: 0);
  late String _username;
  int _currentPage = 0;
  String _profilePictureUrl = '';

  List<String> images = [
    'assets/images/poster1.png',
    'assets/images/poster2.png',
    'assets/images/poster3.png',
    'assets/images/poster4.png',
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
    final chewieController = ChewieController(
      videoPlayerController: VideoPlayerController.asset(
        'assets/videos/musika.mp4',
      ),
      autoPlay: true,
      looping: true,
      // You can customize other ChewieController properties here
    );

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
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
                        SizedBox(width: 10),
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
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: _profilePictureUrl.isNotEmpty
                            ? NetworkImage(_profilePictureUrl)
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
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
          ]
          ),
      ),
    );
  }
}

class InfoVideoScreen extends StatelessWidget {
  final ChewieController chewieController;

  const InfoVideoScreen({Key? key, required this.chewieController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chewie(controller: chewieController),
      ),
    );
  }
}
