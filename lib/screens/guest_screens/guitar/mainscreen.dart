import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:musika/screens/guitar/chords.dart';
import 'package:musika/screens/guitar/mysongs.dart';
import 'package:musika/screens/guitar/songlibrary.dart';

class GuestMainScreenGuitar extends StatelessWidget {
  const GuestMainScreenGuitar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text('Guitar'),
        titleTextStyle: TextStyle(color: Color.fromRGBO(244, 55, 109, 1), fontSize: 25, fontWeight: FontWeight.bold),
      ),
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigationCard(
                title: 'Chords',
                icon: CupertinoIcons.music_note_2,
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (_) => Chords()));
                },
              ),
             const Gap(20),
              NavigationCard(
                title: 'Songlist',
                icon: CupertinoIcons.music_albums_fill,
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (_) => SongListScreen()));
                },
              ),
            ],
          ),
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
              Icon(icon, color: Color.fromRGBO(244, 55, 109, 1)),
              const Gap(20),
              Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
