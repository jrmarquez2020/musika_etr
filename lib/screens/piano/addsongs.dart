import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';


class AddSongsPiano extends StatefulWidget {
  const AddSongsPiano({Key? key}) : super(key: key);

  @override
  _AddSongsPianoState createState() => _AddSongsPianoState();
}

class _AddSongsPianoState extends State<AddSongsPiano> {
  final songsDatabase = FirebaseFirestore.instance;

  var title = TextEditingController();
  var lyrics = TextEditingController();
  var artist = TextEditingController();

  FocusNode lyricsFocusNode = FocusNode();
  bool showUnderline = false;

  List<String> pianochordsList = [
    'C',
    'Cm',
    'C7',
    'Cm7',
    'Cmaj7',
    'CmM7',
    'C6',
    'Cm6',
    'C6/9',
    'C5',
    'C9',
    'Cm9',
    'Cmaj9',
    'C11',
    'Cm11', 
    'Cmaj11',
    'C13',
    'Cm13',
    'Cmaj13',
    'Cadd',
    'C7-5',
    'C7+5',
    'Csus',
    'Cdim', 
    'Cdim7',
    'Cm7b5', 
    'Caug', 
    'Caug7',
    'C#', 
    'C#m', 
    'C#7', 
    'C#m7', 
    'C#maj7', 
    'C#mM7', 
    'C#6', 
    'C#m6', 
    'C#6/9', 
    'C#5', 
    'C#9', 
    'C#m9', 
    'C#maj9', 
    'C#11', 
    'C#m11', 
    'C#maj11', 
    'C#13', 
    'C#m13', 
    'C#maj11', 
    'C#add', 
    'C#7-5', 
    'C#7+5', 
    'C#sus', 
    'C#dim', 
    'C#dim7', 
    'C#m7b5', 
    'C#aug', 
    'C#aug7',
    'Db', 
    'Dbm', 
    'Db7', 
    'Dbm7', 
    'Dbmaj7', 
    'DbmM7', 
    'Db6', 
    'Dbm6', 
    'Db6/9', 
    'Db5', 
    'Db9', 
    'Dbm9', 
    'Dbmaj9', 
    'Db11', 
    'Dbm11', 
    'Dbmaj11', 
    'Db13', 
    'Dbm13','Dbmaj13''Dbadd','Db7-5','Db7+5', 'Dbsus','Dbdim', 'Dbdim7', 'Dbm7b5', 'Dbaug', 'Dbaug7',
    'D', 'Dm', 'D7', 'Dm7', 'Dmaj7', 'DmM7', 'D6', 'Dm6', 'D6/9', 'D5', 'D9', 'Dm9', 'Dmaj9', 'D11', 'Dm11', 'Dmaj11', 'D13', 'Dm13', 'Dmaj13', 'Dadd', 'D7-5', 'D7+5', 'Dsus', 'Ddim', 'Ddim7', 'Dm7b5', 'Daug', 'Daug7',
    'D#', 'D#m', 'D#7', 'D#m7', 'D#maj7', 'D#mM7', 'D#6', 'D#m6', 'D#6/9', 'D#5', 'D#9', 'D#m9', 'D#maj9', 'D#11', 'D#m11', 'D#maj11', 'D#13', 'D#m13', 'D#maj13', 'D#add', 'D#7-5', 'D#7+5', 'D#sus', 'D#dim', 'D#dim7', 'D#m7b5', 'D#aug', 'D#aug7',
    'Eb', 'Ebm', 'Eb7', 'Ebm7', 'Ebmaj7', 'EbmM7', 'Eb6', 'Ebm6', 'Eb6/9', 'Eb5', 'Eb9', 'Ebm9', 'Ebmaj9', 'Eb11', 'Ebm11', 'Ebmaj11', 'Eb13', 'Ebm13', 'Ebmaj13', 'Ebadd', 'Eb7-5', 'Eb7+5', 'Ebsus', 'Ebdim', 'Ebdim7', 'Ebm7b5', 'Ebaug', 'Ebaug7',
    'E', 'Em', 'E7', 'Em7', 'Emaj7', 'EmM7', 'E6', 'Em6', 'E6/9', 'E5', 'E9', 'Em9', 'Emaj9', 'E11', 'Em11', 'Emaj11', 'E13', 'Em13', 'Emaj13', 'Eadd', 'E7-5', 'E7+5', 'Esus', 'Edim', 'Edim7', 'Em7b5', 'Eaug', 'Eaug7',
    'F', 'Fm', 'F7', 'Fm7', 'Fmaj7', 'FmM7', 'F6', 'Fm6', 'F6/9', 'F5', 'F9', 'Fm9', 'Fmaj9', 'F11', 'Fm11', 'Fmaj11', 'F13', 'Fm13', 'Fmaj13', 'Fadd', 'F7-5', 'F7+5', 'Fsus', 'Fdim', 'Fdim7', 'Fm7b5', 'Faug', 'Faug7',
    'F#', 'F#m', 'F#7', 'F#m7', 'F#maj7', 'F#mM7', 'F#6', 'F#m6', 'F#6/9', 'F#5', 'F#9', 'F#m9', 'F#maj9', 'F#11', 'F#m11', 'F#maj11', 'F#13', 'F#m13', 'F#maj13', 'F#add', 'F#7-5', 'F#7+5', 'F#sus', 'F#dim', 'F#dim7', 'F#m7b5', 'F#aug', 'F#aug7',
    'Gb', 'Gbm', 'Gb7', 'Gbm7', 'Gbmaj7', 'GbmM7', 'Gb6', 'Gbm6', 'Gb6/9', 'Gb5', 'Gb9', 'Gbm9', 'Gbmaj9', 'Gb11', 'Gbm11', 'Gbmaj11', 'Gb13', 'Gbm13', 'Gbmaj13', 'Gbadd', 'Gb7-5', 'Gb7+5', 'Gbsus', 'Gbdim', 'Gbdim7', 'Gbm7b5', 'Gbaug', 'Gbaug7',
    'G', 'Gm', 'G7', 'Gm7', 'Gmaj7', 'GmM7', 'G6', 'Gm6', 'G6/9', 'G5', 'G9', 'Gm9', 'Gmaj9', 'G11', 'Gm11', 'Gmaj11', 'G13', 'Gm13', 'Gmaj13', 'Gadd', 'G7-5', 'G7+5', 'Gsus', 'Gdim', 'Gdim7', 'Gm7b5', 'Gaug', 'Gaug7',
    'G#', 'G#m', 'G#7', 'G#m7', 'G#maj7', 'G#mM7', 'G#6', 'G#m6', 'G#6/9', 'G#5', 'G#9', 'G#m9', 'G#maj9', 'G#11', 'G#m11', 'G#maj11', 'G#13', 'G#m13', 'G#maj13', 'G#add', 'G#7-5', 'G#7+5', 'G#sus', 'G#dim', 'G#dim7', 'G#m7b5', 'G#aug', 'G#aug7',
    'Ab', 'Abm', 'Ab7', 'Abm7', 'Abmaj7', 'AbmM7', 'Ab6', 'Abm6', 'Ab6/9', 'Ab5', 'Ab9', 'Abm9', 'Abmaj9', 'Ab11', 'Abm11', 'Abmaj11', 'Ab13', 'Abm13', 'Abmaj13', 'Abadd', 'Ab7-5', 'Ab7+5', 'Absus', 'Abdim', 'Abdim7', 'Abm7b5', 'Abaug', 'Abaug7',
    'A', 'Am', 'A7', 'Am7', 'Amaj7', 'AmM7', 'A6', 'Am6', 'A6/9', 'A5', 'A9', 'Am9', 'Amaj9', 'A11', 'Am11', 'Amaj11', 'A13', 'Am13', 'Amaj13', 'Aadd', 'A7-5', 'A7+5', 'Asus', 'Adim', 'Adim7', 'Am7b5', 'Aaug', 'Aaug7',
    'A#', 'A#m', 'A#7', 'A#m7', 'A#maj7', 'A#mM7', 'A#6', 'A#m6', 'A#6/9', 'A#5', 'A#9', 'A#m9', 'A#maj9', 'A#11', 'A#m11', 'A#maj11', 'A#13', 'A#m13', 'A#maj13', 'A#add', 'A#7-5', 'A#7+5', 'A#sus', 'A#dim', 'A#dim7', 'A#m7b5', 'A#aug', 'A#aug7',
    'Bb', 'Bbm', 'Bb7', 'Bbm7', 'Bbmaj7', 'BbmM7', 'Bb6', 'Bbm6', 'Bb6/9', 'Bb5', 'Bb9', 'Bbm9', 'Bbmaj9', 'Bb11', 'Bbm11', 'Bbmaj11', 'Bb13', 'Bbm13', 'Bbmaj13', 'Bbadd', 'Bb7-5', 'Bb7+5', 'Bbsus', 'Bbdim', 'Bbdim7', 'Bbm7b5', 'Bbaug', 'Bbaug7',
    'B', 'Bm', 'B7', 'Bm7', 'Bmaj7', 'BmM7', 'B6', 'Bm6', 'B6/9', 'B5', 'B9', 'Bm9', 'Bmaj9', 'B11', 'Bm11', 'Bmaj11', 'B13', 'Bm13', 'Bmaj13', 'Badd', 'B7-5', 'B7+5', 'Bsus', 'Bdim', 'Bdim7', 'Bm7b5', 'Baug', 'Baug7'

    
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
                itemCount: pianochordsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(pianochordsList[index]),
                    onTap: () {
                      lyrics.text += ' ' + pianochordsList[index];
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
        child: Container(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Piano', style: GoogleFonts.alice(fontSize: 22,
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
                                    'name': artist.text,
                                    'title': title.text,
                                    'type': 'piano',
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
    ));
  }
}
