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
    Text('Settings'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Musika',
      //     style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w700),
      //   ),
      //   centerTitle: true,
      //   leading: Container(
      //     height: double.infinity,
      //   ),
      // ),
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      
      bottomNavigationBar: Container(
       color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,
          vertical: 20),
          child: GNav(
             duration: Duration(milliseconds: 300),
                backgroundColor: Colors.white,
                color: Colors.black,
                activeColor: Colors.black,
                tabBackgroundColor:  Color.fromARGB(88, 16, 198, 249),
                padding: EdgeInsets.all(16),
                gap: 8,
                haptic: true,
                 tabBorderRadius: 15, 
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
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
            onTabChange: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
