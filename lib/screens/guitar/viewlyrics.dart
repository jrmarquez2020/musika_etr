import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewLyrics extends StatefulWidget {
  final String id;
  const ViewLyrics({required this.id});

  @override
  State<ViewLyrics> createState() => _ViewLyricsState();
}

class _ViewLyricsState extends State<ViewLyrics> {
  final songsDatabase = FirebaseFirestore.instance;
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
       child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg-lyrics.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: StreamBuilder(
                  stream: songsDatabase
                      .collection('songsList')
                      .doc(widget.id)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    }
                    if (!snapshot.hasData) {
                      return const Text('No data found');
                    }

                    if (!snapshot.hasData) {
                      return const Text('No matching data found');
                    }

                    final songs = snapshot.data!;
                    final title = songs['title'];
                    final name = songs['name'];
                    final lyrics = songs['lyrics'];

                    return GestureDetector(
                      onScaleUpdate: (ScaleUpdateDetails details) {
                        setState(() {
                          _scale = details.scale;
                        });
                      },
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(Icons.arrow_back),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      title,
                                      style: TextStyle(
                                        color: Colors.white,
                                          fontSize: 38,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Artist: ' + name,
                                  style: GoogleFonts.aBeeZee(fontSize: 18,color:Color.fromRGBO(244, 55, 109, 1),),
                                ),
                                SizedBox(height: 40),
                                Text(
                                  lyrics,
                                  style: GoogleFonts.aBeeZee(fontSize: 18, color:Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      ),
      
    );
  }
}
