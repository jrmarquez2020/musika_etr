import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musika/screens/guitar/chords.dart';
import 'package:musika/screens/guitar/mysongs.dart';
import 'package:musika/screens/guitar/songlibrary.dart';

class MainScreenGuitar extends StatelessWidget {
  const MainScreenGuitar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromRGBO(32, 40, 55, 1) ,
          title: Text('Guitar'),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
        ),
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
              NavigationCard(
                title: 'My Songs',
                icon: Icons.my_library_music_outlined ,
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (_)=> GuitarScreen()));
                },
              ),
              SizedBox(height: 20),
              NavigationCard(
                title: 'Chords',
                icon: Icons.music_note,
                onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (_)=> Chords()));
                },
              ),
              SizedBox(height: 20),
              NavigationCard(
                title: 'Songlist',
                icon: Icons.settings,
                onTap: () {
                 Navigator.push(context, CupertinoPageRoute(builder: (_)=> SongListScreen()));
                },
              ),
              SizedBox(height: 20),
              NavigationCard(
                title: 'Profile',
                icon: Icons.account_circle,
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (_)=> GuitarScreen()));
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