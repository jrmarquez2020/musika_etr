import 'package:flutter/material.dart';

class SongLibraryScreen extends StatelessWidget {
  const SongLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Song list'),
      ),
      body: Center(),
    );
  }
}