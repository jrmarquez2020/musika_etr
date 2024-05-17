import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';


class AddSongsUkelele extends StatefulWidget {
  const AddSongsUkelele({Key? key}) : super(key: key);

  @override
  _AddSongsUkeleleState createState() => _AddSongsUkeleleState();
}

class _AddSongsUkeleleState extends State<AddSongsUkelele> {
  final songsDatabase = FirebaseFirestore.instance;

  var title = TextEditingController();
  var lyrics = TextEditingController();
  var name = TextEditingController();

  FocusNode lyricsFocusNode = FocusNode();
  bool showUnderline = false;

  List<String> ukelelechordsList = [
 
     'C',
     'C7',
     'Cm',
     'Cdim',
     'Caug',
     'C6',
     'Camj7',
     'C9',
 'Db',
    'Db7',
    'Dbm',
    'Dbm7',
    'Dbdim',
    'Dbaug',
    'Db6',
    'Dbmaj7',
    'Db9','D',
    'D7',
    'Dm',
    'Dm7',
    'Dbim',
    'Daug',
    'D6',
    'Dmaj7',
    'D9','Eb',
    'Eb7',
    'Ebm',
    'Ebdim',
    'Ebaug',
    'Eb6',
    'Ebmaj7',
    'Eb9',  'E',
    'E7',
    'Em',
    'Em7',
    'Edim',
    'Eaug',
    'E6',
    'Emaj7',
    'E9',  'F',
    'F7',
    'Fm',
    'Fm7',
    'Fdim',
    'Faug',
    'F6',
    'Fmaj7',
    'F9','Gb',
    'Gb7',
    'Gbm'
    'Gbm7',
    'Gbdim',
    'Gbaug',
    'Gb6',
    'Gbmaj7',
    'Gb9', 'G',
    'G7',
    'Gm',
    'Gm7',
    'Gdim',
    'Gaug',
    'G6',
    'Gmaj7',
    'G9', 'Ab',
    'Ab7',
    'Abm',
    'Abm7',
    'Abdim',
    'Abaug',
    'Ab6',
    'Abmaj7',
    'Ab9', 'Bb',
    'Bb7',
    'Bbm',
    'Bbm7',
    'Bbdim',
    'Bbaug',
    'Bb6',
    'Bbmaj7',
    'Bb9','B',
    'B7',
    'Bm',
    'Bm7',
    'Bdim',
    'Baug',
    'B6',
    'Bmaj7',
    'B9',
  ];

  void _showChordSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                 Colors.white,
                 Colors.white,
                 Colors.white
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Select a Chord',
                  style: TextStyle(letterSpacing: 2),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
            ),
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                 
                  Color.fromRGBO(244, 55, 109, 1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: ukelelechordsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(ukelelechordsList[index]),
                    onTap: () {
                      lyrics.text += ' ' + ukelelechordsList[index];
                      Navigator.of(context).pop();
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Musika',
              style: GoogleFonts.alice(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8),
             Image.asset(
              'assets/images/musika.png',
              height: 30,
            ),
            
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
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
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ukelele', style: GoogleFonts.alice(fontSize: 22,
                color: Color.fromRGBO(244, 55, 109, 1),),),
                Gap(30),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextFormField(
                              controller: title,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your song title';
                                }
                                return null;
                              },
                              style: GoogleFonts.alice(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                labelText: 'Your Song Title',
                                fillColor: Colors.white,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            TextFormField(
                              controller: name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the name of the artist';
                                }
                                return null;
                              },
                              style: GoogleFonts.alice(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                labelText: 'Your Artist Name',
                                fillColor: Colors.white,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            TextFormField(
                              controller: lyrics,
                              maxLines: 10,
                              keyboardType: TextInputType.multiline,
                              style: GoogleFonts.alice(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                              onTap: () {
                                _showChordSelectionDialog(context);
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                labelText:
                                    'Lyrics (Chords can be added above text)',
                                fillColor: Colors.white,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            ElevatedButton(
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  await FirebaseFirestore.instance
                                      .collection('songsList')
                                      .add({
                                    'lyrics': lyrics.text,
                                    'name': name.text,
                                    'title': title.text,
                                    'type': 'ukelele',
                                    'user':
                                        FirebaseAuth.instance.currentUser!.uid,
                                  });
                                  Navigator.of(context).pop();
                                }
                              },
                              child: Text('Add Song',
                                  style: TextStyle(fontSize: 18, color:Colors.white)),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(244, 55, 109, 1),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    ));
  }
}
