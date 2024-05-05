import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:musika/firebase_options.dart';
import 'package:musika/screens/auth/login.dart';
import 'package:musika/screens/musikahomepage.dart';
import 'package:musika/splash_screen.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
 );
  runApp(const MusikaApp());
}

class MusikaApp extends StatelessWidget {
  const MusikaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator()
                ),
              );
            }
            if (snapshot.hasData) {
              String userId = snapshot.data!.uid;
              return MusikaScreen(userId: userId);
            }
            return LoginScreen();
          }
        ),
      builder: EasyLoading.init(),
    );
    
  }
}