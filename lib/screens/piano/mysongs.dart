import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musika/screens/piano/addsongs.dart';
import 'package:musika/screens/piano/viewylyrics.dart';
import 'package:quickalert/quickalert.dart';

class PianoScreen extends StatefulWidget {
  const PianoScreen({Key? key}) : super(key: key);

  @override
  State<PianoScreen> createState() => _PianoScreenState();
}

class _PianoScreenState extends State<PianoScreen> {
  int _selectedIndex = 0;
  final _formKey = GlobalKey<FormState>();
  bool _isSearching = false;

  final lyricController = TextEditingController();
  final nameController = TextEditingController();
  final titleController = TextEditingController();
  final songsDatabase = FirebaseFirestore.instance;

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (!_isSearching) {
        titleController.clear();
      }
    });
  }

  void _showDeleteConfirmationDialog(
    BuildContext context, String documentId) {
  QuickAlert.show(
    context: context,
    type: QuickAlertType.confirm,
    title: 'Confirm',
    text: 'Are you sure you want to delete this song?',
    confirmBtnText: 'Delete',
    cancelBtnText: 'Cancel',
    onConfirmBtnTap: () {
      songsDatabase.collection('songsList').doc(documentId).delete();
      Navigator.of(context).pop();
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor:  Color.fromRGBO(32, 40, 55, 1),
          automaticallyImplyLeading: false, 
          title: _isSearching
              ? TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {},
                )
              : Text(
                  'Piano',
                  style: GoogleFonts.alice(
                      fontWeight: FontWeight.w700, fontSize: 22 ,color:Colors.white),
                ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              onPressed: _toggleSearch,
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddSongsPiano(),
                  ),
                );
              },
              tooltip: 'Add song',
              icon: Icon(Icons.add),
            ),
          ],
        ),
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
       child:  Row(
          children: [
            Expanded(
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
                      child: StreamBuilder(
                        stream: songsDatabase
                            .collection('songsList')
                            .where('user',
                                isEqualTo:
                                    FirebaseAuth.instance.currentUser?.uid).where('type', isEqualTo: 'piano')
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          }
                          if (!snapshot.hasData) {
                            return const Text('No data found');
                          }
                          return ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              final id = snapshot.data!.docs[index].id;
                              final title = snapshot.data!.docs[index]['title'];
                              final name = snapshot.data!.docs[index];
                              return Card(
                                color: index % 2 == 0
                                    ? Color.fromRGBO(34, 45, 54, 1)
                                    : Color.fromRGBO(42, 55, 66, 1),
                                margin: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 16.0),
                                child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PianoViewLyrics(
                                          id: id,
                                        ),
                                      ),
                                    );
                                  },
                                  title: Row(
                                    children: [
                                      Text(
                                        snapshot.data!.docs[index]['title'],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 21,
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle: Text(
                                    snapshot.data!.docs[index]['name'],
                                    style: TextStyle(
                                      color: Color.fromRGBO(244, 55, 109, 1),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ),
                                  ),
                                  trailing: IconButton(
                                    onPressed: () {
                                      final documentId =
                                          snapshot.data!.docs[index].id;
                                      _showDeleteConfirmationDialog(
                                          context, documentId);
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Color.fromRGBO(244, 55, 109, 1),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
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


