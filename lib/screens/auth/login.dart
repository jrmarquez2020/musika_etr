import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:gap/gap.dart';
import 'package:musika/screens/musikahomepage.dart';
import 'package:musika/screens/auth/register.dart';

import '../guest_screens/instruments_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailCon = TextEditingController();
  var passCon = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool hidePass = true;

  void togglePassword() {
    setState(() {
      hidePass = !hidePass;
    });
  }
  
void login() async {
    if (formKey.currentState!.validate()) {
      EasyLoading.show(status: 'Logging in...');
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailCon.text, password: passCon.text)
          .then((userCredential) async {
        EasyLoading.dismiss();
        String userId = userCredential.user!.uid;
        final document = await FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .get();
        var data = document.data()!;   
        print(document.data());
        Navigator.of(context).pushReplacement(
          CupertinoPageRoute(
            builder: (_) => MusikaScreen(userId: userId),
          ),
        );
      }).catchError((error) {
       
        EasyLoading.showError('Wrong Email and/or Password');
      });
    }
  }
 @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
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
        child:SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.8, // Adjust the height as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/musika.png',
                  width: 100,
                  height: 100,
                ),
                Gap(20),
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         const Text("Welcome Back you've been missed",
                         style: TextStyle(
                          color: Colors.white
                         ),),
                      ],
                     ),
                      Gap(10),
                      const SizedBox(height: 10),
                      TextFormField(
  controller: emailCon,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Email',
    labelStyle: TextStyle(color: Colors.white),
  ),
  style: TextStyle(color: Colors.white),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    if (!EmailValidator.validate(value)) {
      return 'Invalid Email';
    }
    return null;
  },
),

                      const SizedBox(height: 12),
                      TextFormField(
                        controller: passCon,
                        obscureText: hidePass,
                        decoration: InputDecoration(
                          
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Password',
                          
                          suffixIcon: IconButton(
                            onPressed: togglePassword,
                            icon: Icon(
                               color: Color.fromRGBO(244, 55, 109, 1),
                              hidePass ? Icons.visibility : Icons.visibility_off,
                            ),
                          ),
                        ),
                         style: TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton.icon(
                        
                        onPressed: login,
                        label: Text(
                          'Sign in',
                          style: TextStyle(color: Colors.black),
                        ),
                        icon: Icon(Icons.login, color: Colors.black,),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(244, 55, 109, 1),
                        ),
                      ),
                      Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('or' , style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      Gap(5),
                       ElevatedButton.icon(
                        icon: Icon(Icons.person, 
                        color: Colors.black,),
                        onPressed: (){
                          Navigator.of(context).push(CupertinoPageRoute(builder: (_)=> GuestInstrumentScreen()));
                        },
                        label: Text(
                          'Continue as a Guest',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Not a member?',style: TextStyle(color: Colors.white),),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, CupertinoPageRoute(builder: (_) => RegisterScreen()));
                            },
                            child: const Text('Register now'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ) ,
      ),
 
  );
}
}