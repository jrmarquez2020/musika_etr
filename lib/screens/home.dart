import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gap/gap.dart';
import 'package:musika/screens/info_video.dart';
import 'package:musika/screens/instruments_screen.dart';
// import 'package:musika/screens/info_video.dart';
// import 'package:video_player/video_player.dart';
// import 'package:chewie/chewie.dart';
class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  PageController _pageController = PageController(initialPage: 0, viewportFraction: 0.75);
  late String _username;
  int _currentPage = 0;
  String _profilePictureUrl = '';

  List<String> images = [
    'assets/images/guitar1.jpg',
    'assets/images/piano2.jpg',
    'assets/images/ukelele1.jpg',
  ];

  List<String> title = [
    'Guitar',
    'Piano',
    'Ukelele',
  ];

  List<String> description = [
    'Six strings sing soulful stories.',
    'Expressive melodies dance on keys.',
    'Tiny strings strum happy tunes.',
  ];

  // New set of images, titles, and descriptions
  List<String> images2 = [
    'assets/images/poster1.png',
    'assets/images/poster2.png',
    'assets/images/poster3.png',
    'assets/images/poster4.png',

  ];

  List<String> title2 = [
    'Drums',
    'Violin',
    'Flute',
  ];

  List<String> description2 = [
    'Beats that set the rhythm.',
    'Strings that weave magic.',
    'Melodies that float like air.',
  ];

  @override
  void initState() {
    super.initState();
    _username = '';
    _loadUserData();
  }

  @override
  void dispose() {
    _pageController.dispose();
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Learn Music',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 300,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: images.length,
                          onPageChanged: (int index) {
                            setState(() {
                              _currentPage = index;
                            });
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: SizedBox(
                                width: 300, // Set the width of the card
                                child: CardWidget(
                                  image: images[index],
                                  title: title[index],
                                  description: description[index],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                   Expanded(
  flex: 1,
  child: ListView(
    children: [
      // Text widget for instructions
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, ),
        child: Text(
          'Instructions',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      // Add spacing between Text and images
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: images2.map((image) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 120, // Set the height of the image
                width: 400, // Set the width of the image
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
        ),
      ),
      // Button to navigate to another screen
      Padding(
  padding: EdgeInsets.symmetric(horizontal: 8.0),
  child: Center(
    child: SizedBox(
      width: 200, // Set the width of the button
      child: ElevatedButton(
        onPressed: () {
          // Navigate to another screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyVideoPlayer()),
          );
        },

style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(244, 55, 109, 1)),
  ),        child: Text('more', style: TextStyle(color: Colors.white),),
      ),
    ),
  ),
),

    ],
  ),
),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class CardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const CardWidget({Key? key, required this.image, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Set the height of the card
      width: 300, // Set the width of the card
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(244, 55, 109, 1),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InstrumentScreen()),
    );
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(244, 55, 109, 1)),
  ),
  child: Text(
    'learn',
    style: TextStyle(color: Colors.white),
  ),
),



                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// class InfoVideoScreen extends StatelessWidget {
//   final ChewieController chewieController;

//   const InfoVideoScreen({Key? key, required this.chewieController}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Chewie(controller: chewieController),
//       ),
//     );
//   }
// }
    // final chewieController = ChewieController(
    //   videoPlayerController: VideoPlayerController.asset(
    //     'assets/videos/musika.mp4',
    //   ),
    //   autoPlay: true,
    //   looping: true,
    //   // You can customize other ChewieController properties here
    // );