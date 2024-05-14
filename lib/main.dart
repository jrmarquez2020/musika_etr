import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musika/firebase_options.dart';
import 'package:musika/screens/auth/login.dart';
import 'package:musika/screens/musikahomepage.dart';

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

class SplashScreenWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      onInit: () {
            debugPrint("On Init");
          },
          onEnd: () {
            debugPrint("On End");
          },
     backgroundColor:Color.fromRGBO(24, 29, 40, 1),
     childWidget: SizedBox(
       height: 200,
       width: 200,
       child: Column(
         children: [
           Image.asset("assets/images/musika.png"),
            Text("Musika",
            style: GoogleFonts.openSans(textStyle: TextStyle(color: Color.fromRGBO(244, 55, 109, 1), letterSpacing: .5,fontSize: 20,fontWeight: FontWeight.bold),) ,),
         ],
       )
     ),
     onAnimationEnd: () {
       debugPrint("On Fade In End");
     },
     nextScreen: AuthWrapper(),
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
}