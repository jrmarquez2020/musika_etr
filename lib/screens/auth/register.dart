import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:musika/screens/auth/login.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final address = TextEditingController();
  final birthdate = TextEditingController();
  final confirmPassword = TextEditingController();
  bool showPassword = true;
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
   final pickedImage = await ImagePicker().pickImage(source: source);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: const Text('REGISTRATION'),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700, color: Colors.white, fontSize: 23),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
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
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await _pickImage(ImageSource.gallery);
                    },
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      backgroundImage: _image != null
                          ? FileImage(_image!)
                          : AssetImage('assets/images/default_profile.png') as ImageProvider,
                      child: _image == null
                          ? Icon(
                              Icons.camera_alt,
                              size: 40,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ),
                  Gap(12),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Please fill in the information needed.',
                              style: TextStyle(color: Colors.white),
                            ),
                             Gap(12),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: setTextDecoration('Name'),
                              controller: name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Required. Please enter your firstname';
                                }
                                return null;
                              },
                            ),
                             Gap(12),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: setTextDecoration('Address'),
                              controller: address,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Required. Please enter your address';
                                }
                                return null;
                              },
                            ),
                             Gap(12),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: setTextDecoration('Birthdate'),
                              controller: birthdate,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Required. Please enter your Birthdate';
                                }
                                return null;
                              },
                            ),
                             Gap(12),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: setTextDecoration('Email Address'),
                              controller: email,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Required. Please enter your Email Address';
                                }
                                if (!EmailValidator.validate(value)) {
                                  return 'Invalid Email';
                                }
                                return null;
                              },
                            ),
                             Gap(12),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              obscureText: showPassword,
                              decoration: setTextDecoration('Password', isPassword: true),
                              controller: password,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Required. Please enter your password';
                                }
                                if (value.length <= 5) {
                                  return 'Please enter at least 6 characters';
                                }
                                return null;
                              },
                            ),
                           Gap(12),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              obscureText: showPassword,
                              decoration: setTextDecoration('Confirm Password'),
                              controller: confirmPassword,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Required. Please enter your password again';
                                }
                                if (value != password.text) {
                                  return 'Password do not match';
                                }
                                return null;
                              },
                            ),
                           Gap(12),
                            ElevatedButton(
                              onPressed: register,
                              child: const Text(
                                'Register',
                                style: TextStyle(color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(244, 55, 109, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration setTextDecoration(String text, {bool isPassword = false}) {
    return InputDecoration(
      labelStyle: TextStyle(color: Colors.white),
      border: const OutlineInputBorder(),
      labelText: text,
      suffixIcon: isPassword
          ? IconButton(
              color: Color.fromRGBO(244, 55, 109, 1),
              onPressed: toggleShowPassword,
              icon: Icon(
                showPassword ? Icons.visibility : Icons.visibility_off,
              ),
            )
          : null,
    );
  }

  void toggleShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  void register() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    QuickAlert.show(
      context: context,
      type: QuickAlertType.confirm,
      title: 'Are you sure?',
      confirmBtnText: 'YES',
      cancelBtnText: 'No',
      onConfirmBtnTap: () {
        Navigator.of(context).pop();
        registerClient();
      },
    );
  }

void registerClient() async {
  try {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.loading,
      title: 'Loading',
      text: 'Registering your account',
    );

    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.text,
      password: password.text,
    );

    String? userId = userCredential.user?.uid;

    if (userId != null) {
      String? profilePictureUrl;

      if (_image != null) {
      
        profilePictureUrl = await uploadProfilePicture(userId);
      }

   
      await FirebaseFirestore.instance.collection('users').doc(userId).set({
        'name': name.text,
        'address': address.text,
        'birthdate': birthdate.text,
        'email': email.text,
        'profile_picture': profilePictureUrl, 
      });

      Navigator.of(context).pop(); 
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    } else {
      Navigator.of(context).pop(); 
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: 'Error',
        text: 'User ID is null. Please try again.',
      );
    }
  } catch (ex) {
    Navigator.of(context).pop();
    var errorTitle = 'Error';
    var errorText = 'An unknown error occurred';

    if (ex is FirebaseAuthException) {
      if (ex.code == 'weak-password') {
        errorText = 'Please enter a password with more than 6 characters';
        errorTitle = 'Weak Password';
      } else if (ex.code == 'email-already-in-use') {
        errorText = 'This email is already registered';
        errorTitle = 'Email Already in Use';
      } else {
        errorText = ex.message ?? 'An unknown error occurred';
      }
    }

    QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      title: errorTitle,
      text: errorText,
    );
  }
}

  Future<String> uploadProfilePicture(String userId) async {
    try {
      final firebaseStorageRef = FirebaseStorage.instance.ref().child('profile_pictures/$userId.jpg');
      await firebaseStorageRef.putFile(_image!);
      final downloadUrl = await firebaseStorageRef.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      print('Error uploading profile picture: $e');
      return '';
    }
}
}
