import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:musika/screens/auth/login.dart';
import 'package:musika/screens/instruments_screen.dart';

class MusikaScreen extends StatefulWidget {
  const MusikaScreen({Key? key, required this.userId}) : super(key: key);
  final String userId;
  @override
  State<MusikaScreen> createState() => _MusikaScreenState();
}

class _MusikaScreenState extends State<MusikaScreen> {
   int _selectedIndex = 0;
    static List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    InstrumentScreen(),
    Text('Profile Page'),
  ];
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: const Text('Musika',
        style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w700)
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => signOut(context),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
  child: _widgetOptions.elementAt(_selectedIndex),
),
bottomNavigationBar: BottomNavigationBar(
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.my_library_music),
      label: 'Musika',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ],
  currentIndex: _selectedIndex,
  selectedItemColor: Colors.blue,
  onTap: _onItemTapped,
),
    );
  }
}