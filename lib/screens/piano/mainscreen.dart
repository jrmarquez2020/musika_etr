import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musika/screens/piano/chords.dart';
import 'package:musika/screens/piano/mysongs.dart';

class MainScreenPiano extends StatelessWidget {
  const MainScreenPiano({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Piano'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigationCard(
                title: 'My Songs',
                icon: Icons.my_library_music_outlined ,
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (_)=> PianoScreen()));
                },
              ),
              SizedBox(height: 20),
              NavigationCard(
                title: 'Chords',
                icon: Icons.music_note,
                onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (_)=> PianoChords()));
                },
              ),
              SizedBox(height: 20),
              NavigationCard(
                title: 'Settings',
                icon: Icons.settings,
                onTap: () {
                 Navigator.push(context, CupertinoPageRoute(builder: (_)=> PianoScreen()));
                },
              ),
              SizedBox(height: 20),
              NavigationCard(
                title: 'Profile',
                icon: Icons.account_circle,
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (_)=> PianoScreen()));
                },
              ),
            ],
          ),
        ),
      ); 
  }
}

class NavigationCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  NavigationCard({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: 20),
              Text(title, style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}