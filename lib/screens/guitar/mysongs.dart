import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musika/screens/guitar/addsongs.dart';
import 'package:musika/screens/guitar/viewlyrics.dart';
import 'package:quickalert/quickalert.dart';

class GuitarScreen extends StatefulWidget {
  const GuitarScreen({Key? key}) : super(key : key);

  @override
  State<GuitarScreen> createState() => _GuitarScreenState();
}

class _GuitarScreenState extends State<GuitarScreen> {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(color: Colors.white),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor:Color.fromRGBO(32, 40, 55, 1),
          centerTitle: true,
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
                  'Guitar',
                  style: GoogleFonts.alice(
                      fontWeight: FontWeight.w700, fontSize: 22),
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
                    builder: (context) => AddSongs(),
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
            image: DecorationImage(
              image: AssetImage('assets/images/bg-main.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: StreamBuilder(
                        stream: songsDatabase
                            .collection('songsList')
                            .where('user',
                                isEqualTo: FirebaseAuth
                                    .instance.currentUser?.uid)
                            .where('type', isEqualTo: 'guitar')
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (!snapshot.hasData) {
                            return const Text('No data found');
                          }
                          return ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              final id = snapshot.data!.docs[index].id;
                              final title =
                                  snapshot.data!.docs[index]['title'];
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
                                        builder: (context) => ViewLyrics(
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
            ],
          ),
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog(
      BuildContext context, String documentId) {
    QuickAlert.show(
      confirmBtnColor: Colors.red,
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
}
