# musika

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

<!-- 
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:musika/firebase_options.dart';
import 'package:musika/screens/auth/login.dart';
import 'package:musika/screens/musikahomepage.dart';
import 'package:musika/screens_no_internet/no_internet_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenWrapper(),
      builder: EasyLoading.init(),
    );
  }
}

class SplashScreenWrapper extends StatefulWidget {
  @override
  _SplashScreenWrapperState createState() => _SplashScreenWrapperState();
}

class _SplashScreenWrapperState extends State<SplashScreenWrapper> {
  bool _isConnected = true;

  @override
  void initState() {
    super.initState();
    _checkInternetConnection(); 
  }

  Future<void> _checkInternetConnection() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      setState(() {
        _isConnected = false; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _isConnected
        ? FlutterSplashScreen.fadeIn(
            onInit: () {
              debugPrint("On Init");
            },
            onEnd: () {
              debugPrint("On End");
            },
            backgroundColor: Color.fromRGBO(24, 29, 40, 1),
            childWidget: SizedBox(
              height: 200,
              width: 200,
              child: Column(
                children: [
                  Image.asset("assets/images/musika.png"),
                  Text(
                    "Musika",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Color.fromRGBO(244, 55, 109, 1),
                        letterSpacing: .5,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onAnimationEnd: () {
              debugPrint("On Fade In End");
            },
            nextScreen: AuthWrapper(),
          )
        : Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No Internet Connection",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NoInternetScreen(),
                        ),
                      );
                    },
                    child: Text("Retry"),
                  ),
                ],
              ),
            ),
          );
  }
}

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (snapshot.hasData) {
          String userId = snapshot.data!.uid;
          return MusikaScreen(userId: userId);
        }
        return LoginScreen();
      },
    );
  }
} -->
