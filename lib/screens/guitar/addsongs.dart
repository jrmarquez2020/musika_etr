import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';


class AddSongs extends StatefulWidget {
  const AddSongs({Key? key}) : super(key: key);

  @override
  _AddSongsState createState() => _AddSongsState();
}

class _AddSongsState extends State<AddSongs> {
  final songsDatabase = FirebaseFirestore.instance;

  var title = TextEditingController();
  var lyrics = TextEditingController();
  var artist = TextEditingController();

  FocusNode lyricsFocusNode = FocusNode();
  bool showUnderline = false;

  List<String> chordsList = [
    'C',
    'Cm',
    'C7',
    'Cmaj7',
    'Cm7',
    'C6',
    'C9',
    'Cadd9',
    'C5 Power',
    'Csus2',
    'Csus4',
    'Cdim',
    'C+',
    'C7sus4',
    'Cmaj9',
    'Cm9',
    'Cmaj6',
    'Cm6',
    'C7b5',
    'Cm7b5',
    'Cadd11',
    'Cadd4',
    'Cmaj13',
    'Cm11',
    'Cmaj7#11',
    'C9b5',
    'C13',
    'C7b9',
    'C7#9',
    'Cmaj7b5',
    'D',
    'D barre',
    'Dm',
    'Dm barre',
    'D7',
    'D7 barre',
    'Dm7',
    'Dm7 barre',
    'Dmaj7',
    'Dmaj7 barre',
    'Dsus2',
    'Dsus2 barre',
    'Dsus4',
    'Dsus4 barre',
    'Dadd9',
    'Dadd9 barre',
    'D6',
    'D6 barre',
    'Dm6',
    'Dm6 barre',
    'E',
    'E Minor (Em)',
    ' E7',
    'Emaj7',
    'Em7',
    'E7',
    ' EmMaj7',
    ' E6',
    'Em6',
    ' E9',
    ' Eadd9',
    ' E11',
    ' E13',
    ' Esus2',
    ' Esus4',
    'E aug',
    'E dim',
    'E7sus4',
    'E9sus4',
    ' E7#9',
    ' E7b9',
    ' E7#5',
    ' E7b5',
    ' E7b13',
    'E7#11 ',
    'F',
    'Fmaj7',
    'Fmaj9',
    'Fmaj13',
    'Fm',
    'Fm7',
    'F7',
    'Fdim',
    'F aug',
    'Fsus4',
    'F5',
    'G',
    'G barre',
    ' G Major 7',
    ' G Minor',
    ' G7',
    ' Gm7',
    ' G6',
    'Gsus2',
    ' Gsus4',
    'Gadd9',
    'A',
    '(Cm)',
    ' A7',
    ' A5',
    ' A Barre',
    ' A Barre',
    'Aadd9',
    'Asus2',
    ' Asus4',
    ' A6',
    ' A9',
    ' A11',
    'A13',
    ' Aaug',
    'Adim',
    'A7sus4',
    'A7b5 ',
    'B',
    '(Bm)',
    'B7',
    ' Bmaj7',
    ' Bm7',
    ' B7sus4',
    'Badd9',
    ' Bdim',
    'Bdim7',
    ' Baug',
    'B6',
    ' Bm6',
    'B9',
    'Bm9',
    ' Bmaj9',
    ' B11',
    ' Bm11',
    'B13',
    'Bm13',
    ' Bmaj13',
    'Bm7b5',
    'B7b9',
    ' B7#9',
    'B7b5',
    ' B7#5',
    'Bmaj7#5',
    ' Bmaj7b5',
    'Bm/maj7',
    ' Bm6/9',
    'Bsus2',
    ' Bsus4',
    ' B7sus2',
    'B7sus4add6',
    'Badd11',
    'Badd13',
    'B7#11',
    'B7b5b9',
    'B7b5#9',
    'B7#5b9',
    'B7#5#9',
    'Bm7b5b9',
    'Bm7b5#9',
    'Bmaj7#11',
    'Bmaj7b5b9',
    'Bmaj7b5#9',
    ' Bm/maj7b5',
    ' Bm/maj7#5',
    ' B7sus2b5',
    ' B7sus2#5',
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
                itemCount: chordsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(chordsList[index]),
                    onTap: () {
                      lyrics.text += ' ' + chordsList[index];
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
        backgroundColor:  Color.fromRGBO(32, 40, 55, 1),
        automaticallyImplyLeading: false,
        title: Text(
          'Musika',
          style: GoogleFonts.alice(fontWeight: FontWeight.w700, fontSize: 22),
          
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
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
        child:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgmain.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
                                labelText: 'Song Title',
                                fillColor: Colors.white70,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            TextFormField(
                              controller: artist,
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
                                labelText: 'Artist',
                                fillColor: Colors.white70,
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
                                fillColor: Colors.white70,
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
                                    'name': artist.text,
                                    'title': title.text,
                                    'type': 'guitar',
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
      ),
        ),

    );
  }
}
