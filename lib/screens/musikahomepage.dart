import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:musika/screens/home.dart';
import 'package:musika/screens/instruments_screen.dart';
import 'package:musika/screens/profilescreen.dart';

class MusikaScreen extends StatefulWidget {
  const MusikaScreen({Key? key, required this.userId}) : super(key: key);
  final String userId;
  @override
  State<MusikaScreen> createState() => _MusikaScreenState();
}

class _MusikaScreenState extends State<MusikaScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePageScreen(),
    InstrumentScreen(),
    ProfileScreen(),
   
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      
      bottomNavigationBar: Container(
       color: Color.fromRGBO(24, 29, 40, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0,
          vertical: 20),
          child: GNav(
             duration: Duration(milliseconds: 300),
                backgroundColor: Color.fromRGBO(24, 29, 40, 1),
                color: Color.fromRGBO(244, 55, 109, 1),
                activeColor: Color.fromRGBO(0, 255, 188, 1),
                tabBackgroundColor:  Color.fromRGBO(255, 255, 255, 0.07),
                padding: EdgeInsets.all(16),
                gap: 8,
                haptic: true,
               
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.music_note_rounded,
                text: 'Musika',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
           
            ],
            onTabChange: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
