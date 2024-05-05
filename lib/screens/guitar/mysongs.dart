import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musika/screens/guitar/addsongs.dart';
import 'package:musika/screens/guitar/viewlyrics.dart';

class GuitarScreen extends StatefulWidget {
  const GuitarScreen({Key? key}) : super(key: key);

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
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 179, 145, 24),
          automaticallyImplyLeading: false, // Disable default back button
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
                  'My Songs',
                  style: GoogleFonts.alice(
                      fontWeight: FontWeight.w700, fontSize: 22),
                ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back), // Add back button icon
            onPressed: () {
              Navigator.of(context).pop(); // Pop the current screen
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
        body: Row(
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
                                    FirebaseAuth.instance.currentUser?.uid)
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
                              return ListTile(
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
                                        color: Colors.brown,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 21,
                                      ),
                                    ),
                                  ],
                                ),
                                subtitle: Text(
                                  snapshot.data!.docs[index]['name'],
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    final documentId =
                                        snapshot.data!.docs[index].id;
                                    songsDatabase
                                        .collection('songsList')
                                        .doc(documentId)
                                        .delete();
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.black,
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
    );
  }
}
