import 'package:flutter/material.dart';
import 'package:flutter_guitar_tabs/flutter_guitar_tabs.dart';
import 'package:google_fonts/google_fonts.dart';


class PianoChords extends StatefulWidget {
  const PianoChords({super.key});

  @override
  State<PianoChords> createState() => _PianoChordsState();
}

class _PianoChordsState extends State<PianoChords> {
  int _selectedIndex = 0;

  final List<String> chordTitles = [
    'C',
    'C#',
    'Db',
    'D',
    'D#',
    'Eb',
    'E',
    'F',
    'F#',
    'Gb',
    'G',
    'G#',
    'Ab',
    'A',
    'A#',
    'Bb',
    'B',
  ];

  void _onChordSelected(BuildContext context, String chordTitle) {
    if (chordTitle == 'C') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'C#') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'Db') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'D') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'D#') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'Eb') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'E') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'F') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'F#') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'Gb') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'G') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'G#') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'Ab') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'A') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'A#') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'Bb') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BChordsList(chordTitle: chordTitle),
        ),
      );
    }else if (chordTitle == 'B') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BChordsList(chordTitle: chordTitle),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 179, 145, 24),
          automaticallyImplyLeading: false,
          title: Text(
            'Chords',
            style: GoogleFonts.alice(fontWeight: FontWeight.w700, fontSize: 22),
          ),
           leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
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
                      child: ListView.builder(
                        itemCount: chordTitles.length,
                        itemBuilder: (BuildContext context, int index) {
                          final chordTitle = chordTitles[index];
                          return ListTile(
                            title: Text(
                              chordTitle,
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                            onTap: () => _onChordSelected(context, chordTitle),
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

class CChordsList extends StatelessWidget {
  final String chordTitle;

  CChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordTitle),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgmain.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: chordTypesC.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(chordTypesC[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChordTypeDetailsScreen(
                      chordTitle: chordTitle,
                      chordType: chordTypesC[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class ChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  ChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget tabWidget;

    if (chordType == 'C Major (C)') {
      tabWidget = TabWidget(
        name: 'C Chord',
        tabs: ["x 3 2 0 1 0"],
      );
    } else if (chordType == 'C Minor (Cm)') {
      tabWidget = TabWidget(
        name: 'C Minor',
        tabs: ["x 3 5 5 4 3"],
      );
    } else if (chordType == 'C7') {
      tabWidget = TabWidget(
        name: 'C7',
        tabs: ["x 3 2 3 1 0"],
      );
    } else if (chordType == 'Cmaj7') {
      tabWidget = TabWidget(
        name: 'Cmaj7',
        tabs: ["x 3 2 0 0 0"],
      );
    } else if (chordType == 'Cm7') {
      tabWidget = TabWidget(
        name: 'Cm7',
        tabs: ["x 3 5 3 4 3"],
      );
    } else if (chordType == 'C6') {
      tabWidget = TabWidget(
        name: 'C6',
        tabs: ["x 3 2 2 1 0"],
      );
    } else if (chordType == 'C9') {
      tabWidget = TabWidget(
        name: 'C9',
        tabs: ["x 3 2 3 3 3"],
      );
    } else if (chordType == 'Cadd9') {
      tabWidget = TabWidget(
        name: 'Cadd9',
        tabs: ["x 3 2 0 3 0"],
      );
    } else if (chordType == 'C5 (Power chord)') {
      tabWidget = TabWidget(
        name: 'C5 (Power chord)',
        tabs: ["x 3 5 5 x 0"],
      );
    } else if (chordType == 'Csus2') {
      tabWidget = TabWidget(
        name: 'Csus2',
        tabs: ["x 3 0 0 3 3"],
      );
    } else if (chordType == 'Csus4') {
      tabWidget = TabWidget(
        name: 'Csus4',
        tabs: ["x 3 3 0 1 0"],
      );
    } else if (chordType == 'Cdim') {
      tabWidget = TabWidget(
        name: 'Cdim',
        tabs: ["x 3 4 2 4 0"],
      );
    } else if (chordType == 'Caugmented (C+)') {
      tabWidget = TabWidget(
        name: 'Caugmented (C+)',
        tabs: ["x 3 2 1 1 0"],
      );
    } else if (chordType == 'C7sus4') {
      tabWidget = TabWidget(
        name: 'C7sus4',
        tabs: ["x 3 3 3 1 0"],
      );
    } else if (chordType == 'Cmaj9') {
      tabWidget = TabWidget(
        name: 'Cmaj9',
        tabs: ["x 3 2 4 3 0"],
      );
    } else if (chordType == 'Cm9') {
      tabWidget = TabWidget(
        name: 'Cm9',
        tabs: ["x 3 1 3 3 0"],
      );
    } else if (chordType == 'Cmaj6') {
      tabWidget = TabWidget(
        name: 'Cmaj6',
        tabs: ["x 3 2 2 0 0"],
      );
    } else if (chordType == 'Cm6') {
      tabWidget = TabWidget(
        name: 'Cm6',
        tabs: ["x 3 1 2 1 3"],
      );
    } else if (chordType == 'C7b5') {
      tabWidget = TabWidget(
        name: ' C7b5',
        tabs: ["x 3 4 3 4 0"],
      );
    } else if (chordType == 'Cm7b5') {
      tabWidget = TabWidget(
        name: 'Cm7b5',
        tabs: ["x 3 4 3 4 0"],
      );
    } else if (chordType == 'Cadd11') {
      tabWidget = TabWidget(
        name: 'Cadd11',
        tabs: ["x 3 2 0 3 3"],
      );
    } else if (chordType == 'Cadd4') {
      tabWidget = TabWidget(
        name: 'Cadd4',
        tabs: ["x 3 3 0 1 0"],
      );
    } else if (chordType == 'Cmaj13') {
      tabWidget = TabWidget(
        name: 'Cmaj13',
        tabs: ["x 3 2 4 0 0"],
      );
    } else if (chordType == 'Cm11') {
      tabWidget = TabWidget(
        name: 'Cm11',
        tabs: ["x 3 1 3 1 0"],
      );
    } else if (chordType == 'Cmaj7#11') {
      tabWidget = TabWidget(
        name: 'Cmaj7#11',
        tabs: ["x 3 2 0 2 0"],
      );
    } else if (chordType == 'C9b5') {
      tabWidget = TabWidget(
        name: 'C9b5',
        tabs: ["x 3 2 3 2 0"],
      );
    } else if (chordType == 'C13') {
      tabWidget = TabWidget(
        name: 'C13',
        tabs: ["x 3 2 3 0 0"],
      );
    } else if (chordType == 'C7b9') {
      tabWidget = TabWidget(
        name: 'C7b9',
        tabs: ["x 3 2 3 2 0"],
      );
    } else if (chordType == 'C7#9') {
      tabWidget = TabWidget(
        name: 'C7#9',
        tabs: ["x 3 2 3 4 0"],
      );
    } else if (chordType == 'Cmaj7b5') {
      tabWidget = TabWidget(
        name: 'Cmaj7b5',
        tabs: ["x 3 4 2 3 0"],
      );
    } else {
      tabWidget = TabWidget(
        name: 'Other Chord',
        tabs: ["x x x x x x"],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordType),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgmain.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 21,
              ),
              Text(
                '$chordType of $chordTitle chords',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    tabWidget,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DChordsList extends StatelessWidget {
  final String chordTitle;

  DChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'D Major (open position)',
    'D Major (barre chord)',
    'D Minor (open position)',
    'D Minor (barre chord)',
    'D7 (open position)',
    'D7 (barre chord)',
    'Dm7 (open position)',
    'Dm7 (barre chord)',
    'Dmaj7 (open position)',
    'Dmaj7 (barre chord)',
    'Dsus2 (open position)',
    'Dsus2 (barre chord)',
    'Dsus4 (open position)',
    'Dsus4 (barre chord)',
    'Dadd9 (open position)',
    'Dadd9 (barre chord)',
    'D6 (open position)',
    'D6 (barre chord)',
    'Dm6 (open position)',
    'Dm6 (barre chord)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordTitle),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgmain.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: chordTypesC.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(chordTypesC[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DChordsTypesDetails(
                      chordTitle: chordTitle,
                      chordType: chordTypesC[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class DChordsTypesDetails extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  DChordsTypesDetails({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget tabWidget;

    if (chordType == 'D Major (open position)') {
      tabWidget = TabWidget(
        name: 'D Major (open position)',
        tabs: ["x x 0 2 3 2"],
      );
    } else if (chordType == 'D Major (barre chord)') {
      tabWidget = TabWidget(
        name: 'D Major (barre chord)',
        tabs: ["x 5 7 7 7 5"],
      );
    } else if (chordType == 'D Minor (open position)') {
      tabWidget = TabWidget(
        name: 'D Minor (open position)',
        tabs: ["x x 0 2 3 1"],
      );
    } else if (chordType == 'D Minor (barre chord)') {
      tabWidget = TabWidget(
        name: 'D Minor (barre chord)',
        tabs: ["x 5 7 7 6 5"],
      );
    } else if (chordType == 'D7 (open position)') {
      tabWidget = TabWidget(
        name: 'D7 (open position)',
        tabs: ["x x 0 2 1 2"],
      );
    } else if (chordType == 'D7 (barre chord)') {
      tabWidget = TabWidget(
        name: 'D7 (barre chord)',
        tabs: ["x 5 7 5 7"],
      );
    } else if (chordType == 'Dm7 (open position)') {
      tabWidget = TabWidget(
        name: 'Dm7 (open position)',
        tabs: ["x x 0 2 1 1"],
      );
    } else if (chordType == 'Dm7 (barre chord)') {
      tabWidget = TabWidget(
        name: 'Dm7 (barre chord)',
        tabs: ["x x 7 5 6 5"],
      );
    } else if (chordType == 'Dmaj7 (open position)') {
      tabWidget = TabWidget(
        name: 'Dmaj7 (open position)',
        tabs: ["x x 0 2 2 2"],
      );
    } else if (chordType == 'Dmaj7 (barre chord)') {
      tabWidget = TabWidget(
        name: 'Dmaj7 (barre chord)',
        tabs: ["x x 7 6 7 5"],
      );
    } else if (chordType == 'Dsus2 (open position)') {
      tabWidget = TabWidget(
        name: 'Dsus2 (open position)',
        tabs: ["x x 0 2 3 0"],
      );
    } else if (chordType == 'Dsus2 (barre chord)') {
      tabWidget = TabWidget(
        name: 'Dsus2 (barre chord)',
        tabs: ["x 5 7 7 5 5"],
      );
    } else if (chordType == 'Dsus4 (open position)') {
      tabWidget = TabWidget(
        name: 'Dsus4 (open position)',
        tabs: ["x x 0 2 3 3"],
      );
    } else if (chordType == 'Dsus4 (barre chord)') {
      tabWidget = TabWidget(
        name: 'Dsus4 (barre chord)',
        tabs: ["x 5 7 7 8 5"],
      );
    } else if (chordType == 'Dadd9 (open position)') {
      tabWidget = TabWidget(
        name: 'Dadd9 (open position)',
        tabs: ["x 2 0 2 3 2"],
      );
    } else if (chordType == 'Dadd9 (barre chord)') {
      tabWidget = TabWidget(
        name: 'Dadd9 (barre chord)',
        tabs: ["x 5 7 7 7 5"],
      );
    } else if (chordType == 'D6 (open position)') {
      tabWidget = TabWidget(
        name: 'D6 (open position)',
        tabs: ["x 2 0 2 0 2"],
      );
    } else if (chordType == 'D6 (barre chord)') {
      tabWidget = TabWidget(
        name: 'D6 (barre chord)',
        tabs: ["x 5 7 7 7 5"],
      );
    } else if (chordType == 'Dm6 (open position)') {
      tabWidget = TabWidget(
        name: ' Dm6 (open position)',
        tabs: ["x 2 0 2 0 1"],
      );
    } else if (chordType == 'Dm6 (barre chord)') {
      tabWidget = TabWidget(
        name: 'Dm6 (barre chord)',
        tabs: ["x x 7 5 6 5"],
      );
    } else {
      tabWidget = TabWidget(
        name: 'Other Chord',
        tabs: ["x x x x x x"],
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordType),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgmain.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Text(
                '$chordType of $chordTitle chords',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    tabWidget,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EChordsList extends StatelessWidget {
  final String chordTitle;

  EChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'E Major (E)',
    'E Minor (Em)',
    'E7',
    'E Major 7 (Emaj7)',
    'E Minor 7 (Em7)',
    'E Dominant 7 (E7)',
    'E Minor Major 7 (EmMaj7)',
    'E6',
    'E Minor 6 (Em6)',
    'E9',
    'Eadd9',
    'E11',
    'E13',
    'E Suspended 2 (Esus2)',
    'E Suspended 4 (Esus4)',
    'E Augmented (Eaug)',
    'E Diminished (Edim)',
    'E7sus4',
    'E9sus4',
    'E7#9 (E7 sharp 9)',
    'E7b9 (E7 flat 9)',
    'E7#5 (E7 sharp 5)',
    'E7b5 (E7 flat 5)',
    'E7b13 (E7 flat 13)',
    'E7#11 (E7 sharp 11)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordTitle),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgmain.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: chordTypesC.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(chordTypesC[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EChordsTypesDetails(
                      chordTitle: chordTitle,
                      chordType: chordTypesC[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class EChordsTypesDetails extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  EChordsTypesDetails({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget tabWidget;

    if (chordType == 'E Major (E)') {
      tabWidget = TabWidget(
        name: 'E Major (E)',
        tabs: ["x 3 2 0 1 0"],
      );
    } else if (chordType == 'E Minor (Em)') {
      tabWidget = TabWidget(
        name: 'E Minor (Em)',
        tabs: ["x 3 5 5 4 3"],
      );
    } else if (chordType == 'E7') {
      tabWidget = TabWidget(
        name: 'E7',
        tabs: ["x 3 2 3 1 0"],
      );
    } else if (chordType == 'E Major 7 (Emaj7)') {
      tabWidget = TabWidget(
        name: 'E Major 7 (Emaj7)',
        tabs: ["x 3 2 0 0 0"],
      );
    } else if (chordType == 'E Minor 7 (Em7)') {
      tabWidget = TabWidget(
        name: 'E Minor 7 (Em7)',
        tabs: ["x 3 5 3 4 3"],
      );
    } else if (chordType == 'E Dominant 7 (E7)') {
      tabWidget = TabWidget(
        name: 'E Dominant 7 (E7)',
        tabs: ["x 3 2 2 1 0"],
      );
    } else if (chordType == 'E Minor Major 7 (EmMaj7)') {
      tabWidget = TabWidget(
        name: 'E Minor Major 7 (EmMaj7)',
        tabs: ["x 3 2 3 3 3"],
      );
    } else if (chordType == 'E6') {
      tabWidget = TabWidget(
        name: 'E6',
        tabs: ["x 3 2 0 3 0"],
      );
    } else if (chordType == 'E Minor 6 (Em6)') {
      tabWidget = TabWidget(
        name: 'E Minor 6 (Em6)',
        tabs: ["x 3 5 5 x x"],
      );
    } else if (chordType == 'E9') {
      tabWidget = TabWidget(
        name: 'E9',
        tabs: ["x 3 0 0 3 3"],
      );
    } else if (chordType == 'Eadd9') {
      tabWidget = TabWidget(
        name: 'Eadd9',
        tabs: ["x 3 3 0 1 0"],
      );
    } else if (chordType == 'E11') {
      tabWidget = TabWidget(
        name: 'E11',
        tabs: ["x 3 4 2 4 x"],
      );
    } else if (chordType == 'E13') {
      tabWidget = TabWidget(
        name: 'E13',
        tabs: ["x 3 2 1 1 0"],
      );
    } else if (chordType == 'E Suspended 2 (Esus2)') {
      tabWidget = TabWidget(
        name: 'E Suspended 2 (Esus2)',
        tabs: ["x 3 3 3 1 0"],
      );
    } else if (chordType == 'E Suspended 4 (Esus4)') {
      tabWidget = TabWidget(
        name: 'E Suspended 4 (Esus4)',
        tabs: ["x 3 2 4 3 0"],
      );
    } else if (chordType == 'E Augmented (Eaug)') {
      tabWidget = TabWidget(
        name: 'E Augmented (Eaug)',
        tabs: ["x 3 1 3 3 x"],
      );
    } else if (chordType == 'E Diminished (Edim)') {
      tabWidget = TabWidget(
        name: 'E Diminished (Edim)',
        tabs: ["x 3 2 2 0 0"],
      );
    } else if (chordType == 'E7sus4') {
      tabWidget = TabWidget(
        name: 'E7sus4',
        tabs: ["x 3 1 2 1 3"],
      );
    } else if (chordType == 'E9sus4') {
      tabWidget = TabWidget(
        name: ' E9sus4',
        tabs: ["x 3 4 3 4 x"],
      );
    } else if (chordType == 'E7#9 (E7 sharp 9)') {
      tabWidget = TabWidget(
        name: 'E7#9 (E7 sharp 9)',
        tabs: ["x 3 4 3 4 x"],
      );
    } else if (chordType == 'E7b9 (E7 flat 9)') {
      tabWidget = TabWidget(
        name: 'E7b9 (E7 flat 9)',
        tabs: ["x 3 2 0 3 3"],
      );
    } else if (chordType == 'E7#5 (E7 sharp 5)') {
      tabWidget = TabWidget(
        name: 'E7#5 (E7 sharp 5)',
        tabs: ["x 3 3 0 1 0"],
      );
    } else if (chordType == 'E7b5 (E7 flat 5)') {
      tabWidget = TabWidget(
        name: 'E7b5 (E7 flat 5)',
        tabs: ["x 3 2 4 0 0"],
      );
    } else if (chordType == 'E7b13 (E7 flat 13') {
      tabWidget = TabWidget(
        name: 'E7b13 (E7 flat 13',
        tabs: ["x 3 1 3 1 x"],
      );
    } else if (chordType == 'E7#11 (E7 sharp 11)') {
      tabWidget = TabWidget(
        name: 'E7#11 (E7 sharp 11)',
        tabs: ["x 3 2 0 2 0"],
      );
    } else {
      tabWidget = TabWidget(
        name: 'Other Chord',
        tabs: ["x x x x x x"],
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordType),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgmain.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Text(
                '$chordType of $chordTitle chords',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    tabWidget,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FChordsList extends StatelessWidget {
  final String chordTitle;

  FChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'F Major (F)',
    'F Major 7 (Fmaj7)',
    'F Major 9 (Fmaj9)',
    'F Major 13 (Fmaj13)',
    'F Minor (Fm)',
    'F Minor 7 (Fm7)',
    'F Dominant 7 (F7)',
    'F Diminished (Fdim)',
    'F Augmented (Faug)',
    'F Suspended 4 (Fsus4)',
    'F Power Chord (F5)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordTitle),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgmain.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: chordTypesC.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(chordTypesC[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FChordsTypesDetails(
                      chordTitle: chordTitle,
                      chordType: chordTypesC[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class FChordsTypesDetails extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  FChordsTypesDetails({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget tabWidget;

    if (chordType == 'F Major (F)') {
      tabWidget = TabWidget(
        name: 'F Major (F)',
        tabs: ["x 3 2 0 1 0"],
      );
    } else if (chordType == 'F Major 7 (Fmaj7)') {
      tabWidget = TabWidget(
        name: 'F Major 7 (Fmaj7)',
        tabs: ["x 3 5 5 4 3"],
      );
    } else if (chordType == 'F Major 9 (Fmaj9)') {
      tabWidget = TabWidget(
        name: 'F Major 9 (Fmaj9)',
        tabs: ["x 3 2 3 1 0"],
      );
    } else if (chordType == 'F Major 13 (Fmaj13)') {
      tabWidget = TabWidget(
        name: 'F Major 13 (Fmaj13)',
        tabs: ["x 3 2 0 0 0"],
      );
    } else if (chordType == 'F Minor (Fm)') {
      tabWidget = TabWidget(
        name: 'F Minor (Fm)',
        tabs: ["x 3 5 3 4 3"],
      );
    } else if (chordType == 'F Minor 7 (Fm7)') {
      tabWidget = TabWidget(
        name: 'F Minor 7 (Fm7)',
        tabs: ["x 3 2 2 1 0"],
      );
    } else if (chordType == 'F Dominant 7 (F7)') {
      tabWidget = TabWidget(
        name: 'F Dominant 7 (F7)',
        tabs: ["x 3 2 3 3 3"],
      );
    } else if (chordType == 'F Diminished (Fdim)') {
      tabWidget = TabWidget(
        name: 'F Diminished (Fdim)',
        tabs: ["x 3 2 0 3 0"],
      );
    } else if (chordType == 'F Augmented (Faug)') {
      tabWidget = TabWidget(
        name: 'F Augmented (Faug)',
        tabs: ["x 3 5 5 x x"],
      );
    } else if (chordType == 'F Suspended 4 (Fsus4)') {
      tabWidget = TabWidget(
        name: 'F Suspended 4 (Fsus4)',
        tabs: ["x 3 0 0 3 3"],
      );
    } else if (chordType == 'F Power Chord (F5)') {
      tabWidget = TabWidget(
        name: 'F Power Chord (F5)',
        tabs: ["x 3 3 0 1 0"],
      );
    } else {
      tabWidget = TabWidget(
        name: 'Other Chord',
        tabs: ["x x x x x x"],
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordType),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgmain.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Text(
                '$chordType of $chordTitle chords',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    tabWidget,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GChordsList extends StatelessWidget {
  final String chordTitle;

  GChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'G Major (open position)',
    'G Major (barre chord, 3rd fret)',
    'G Major 7',
    'G Minor',
    'G7',
    'Gm7',
    'G6',
    'Gsus2',
    'Gsus4',
    'Gadd9',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordTitle),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgmain.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: chordTypesC.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(chordTypesC[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GChordsTypesDetails(
                      chordTitle: chordTitle,
                      chordType: chordTypesC[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class GChordsTypesDetails extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  GChordsTypesDetails({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget tabWidget;

    if (chordType == 'G Major (open position)') {
      tabWidget = TabWidget(
        name: 'G Major (open position)',
        tabs: ["x 3 2 0 1 0"],
      );
    } else if (chordType == 'G Major (barre chord, 3rd fret)') {
      tabWidget = TabWidget(
        name: 'G Major (barre chord, 3rd fret)',
        tabs: ["x 3 5 5 4 3"],
      );
    } else if (chordType == 'G Major 7') {
      tabWidget = TabWidget(
        name: 'G Major 7',
        tabs: ["x 3 2 3 1 0"],
      );
    } else if (chordType == 'G Minor') {
      tabWidget = TabWidget(
        name: 'G Minor',
        tabs: ["x 3 2 0 0 0"],
      );
    } else if (chordType == 'G7') {
      tabWidget = TabWidget(
        name: 'G7',
        tabs: ["x 3 5 3 4 3"],
      );
    } else if (chordType == 'Gm7') {
      tabWidget = TabWidget(
        name: 'Gm7',
        tabs: ["x 3 2 2 1 0"],
      );
    } else if (chordType == 'G6') {
      tabWidget = TabWidget(
        name: 'G6',
        tabs: ["x 3 2 3 3 3"],
      );
    } else if (chordType == 'Gsus2') {
      tabWidget = TabWidget(
        name: 'Gsus2',
        tabs: ["x 3 2 0 3 0"],
      );
    } else if (chordType == 'Gsus4') {
      tabWidget = TabWidget(
        name: 'Gsus4',
        tabs: ["x 3 5 5 x x"],
      );
    } else if (chordType == 'Gadd9') {
      tabWidget = TabWidget(
        name: 'Gadd9',
        tabs: ["x 3 0 0 3 3"],
      );
    } else {
      tabWidget = TabWidget(
        name: 'Other Chord',
        tabs: ["x x x x x x"],
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordType),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgmain.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Text(
                '$chordType of $chordTitle chords',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    tabWidget,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AChordsList extends StatelessWidget {
  final String chordTitle;

  AChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'A Major (A)',
    'A Minor (Cm)',
    'A7',
    'A5',
    'A Barre Chord (E shape)',
    'A Barre Chord (A shape)',
    'Aadd9',
    'Asus2',
    'Asus4',
    'A6',
    'A9',
    'A11',
    'A13',
    'Aaug (A augmented)',
    'Adim (A diminished)',
    'A7sus4',
    'A7b5 (A dominant 7 flat 5)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordTitle),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgmain.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: chordTypesC.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(chordTypesC[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AChordsTypesDetails(
                      chordTitle: chordTitle,
                      chordType: chordTypesC[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class AChordsTypesDetails extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  AChordsTypesDetails({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget tabWidget;

    if (chordType == 'A Major (A)') {
      tabWidget = TabWidget(
        name: 'A Major (A)',
        tabs: ["x 3 2 0 1 0"],
      );
    } else if (chordType == 'A Minor (Cm)') {
      tabWidget = TabWidget(
        name: 'A Minor (Cm)',
        tabs: ["x 3 5 5 4 3"],
      );
    } else if (chordType == 'A7') {
      tabWidget = TabWidget(
        name: 'A7',
        tabs: ["x 3 2 3 1 0"],
      );
    } else if (chordType == 'A5') {
      tabWidget = TabWidget(
        name: 'A5',
        tabs: ["x 3 2 0 0 0"],
      );
    } else if (chordType == 'A Barre Chord (E shape)') {
      tabWidget = TabWidget(
        name: 'A Barre Chord (E shape)',
        tabs: ["x 3 5 3 4 3"],
      );
    } else if (chordType == 'A Barre Chord (A shape)') {
      tabWidget = TabWidget(
        name: 'A Barre Chord (A shape)',
        tabs: ["x 3 2 2 1 0"],
      );
    } else if (chordType == 'Aadd9') {
      tabWidget = TabWidget(
        name: 'Aadd9',
        tabs: ["x 3 2 3 3 3"],
      );
    } else if (chordType == 'Asus2') {
      tabWidget = TabWidget(
        name: 'Asus2',
        tabs: ["x 3 2 0 3 0"],
      );
    } else if (chordType == 'Asus4') {
      tabWidget = TabWidget(
        name: 'Asus4',
        tabs: ["x 3 5 5 x x"],
      );
    } else if (chordType == 'A6') {
      tabWidget = TabWidget(
        name: 'A6',
        tabs: ["x 3 0 0 3 3"],
      );
    } else if (chordType == 'A9') {
      tabWidget = TabWidget(
        name: 'A9',
        tabs: ["x 3 3 0 1 0"],
      );
    } else if (chordType == 'A11') {
      tabWidget = TabWidget(
        name: 'A11',
        tabs: ["x 3 4 2 4 x"],
      );
    } else if (chordType == 'A13') {
      tabWidget = TabWidget(
        name: 'A13',
        tabs: ["x 3 2 1 1 0"],
      );
    } else if (chordType == 'Aaug (A augmented)') {
      tabWidget = TabWidget(
        name: 'Aaug (A augmented)',
        tabs: ["x 3 3 3 1 0"],
      );
    } else if (chordType == 'Adim (A diminished)') {
      tabWidget = TabWidget(
        name: 'Adim (A diminished)',
        tabs: ["x 3 2 4 3 0"],
      );
    } else if (chordType == 'A7sus4') {
      tabWidget = TabWidget(
        name: 'A7sus4',
        tabs: ["x 3 1 3 3 x"],
      );
    } else if (chordType == 'A7b5 (A dominant 7 flat 5)') {
      tabWidget = TabWidget(
        name: 'A7b5 (A dominant 7 flat 5)',
        tabs: ["x 3 2 2 0 0"],
      );
    } else {
      tabWidget = TabWidget(
        name: 'Other Chord',
        tabs: ["x x x x x x"],
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordType),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgmain.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Text(
                '$chordType of $chordTitle chords',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    tabWidget,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BChordsList extends StatelessWidget {
  final String chordTitle;

  BChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'B Major (B)',
    'B Minor (Bm)',
    'B7',
    'Bmaj7',
    'Bm7',
    'B7sus4',
    'Badd9',
    'Bdim',
    'Bdim7',
    'Baug',
    'B6',
    'Bm6',
    'B9',
    'Bm9',
    'Bmaj9',
    'B11',
    'Bm11',
    'B13',
    'Bm13',
    'Bmaj13',
    'Bm7b5',
    'B7b9',
    'B7#9',
    'B7b5',
    'B7#5',
    'Bmaj7#5',
    'Bmaj7b5',
    'Bm/maj7',
    'Bm6/9',
    'Bsus2',
    'Bsus4',
    'B7sus2',
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
    'Bm/maj7b5',
    'Bm/maj7#5',
    'B7sus2b5',
    'B7sus2#5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordTitle),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgmain.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: chordTypesC.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(chordTypesC[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BChordsTypesDetails(
                      chordTitle: chordTitle,
                      chordType: chordTypesC[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class BChordsTypesDetails extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  BChordsTypesDetails({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget tabWidget;

    if (chordType == 'B Major (B)') {
      tabWidget = TabWidget(
        name: 'B Major (B)',
        tabs: ["x 3 2 0 1 0"],
      );
    } else if (chordType == 'B Minor (Bm)') {
      tabWidget = TabWidget(
        name: 'B Minor (Bm)',
        tabs: ["x 3 5 5 4 3"],
      );
    } else if (chordType == 'B7') {
      tabWidget = TabWidget(
        name: 'B7',
        tabs: ["x 3 2 3 1 0"],
      );
    } else if (chordType == 'Bmaj7') {
      tabWidget = TabWidget(
        name: 'Bmaj7',
        tabs: ["x 3 2 0 0 0"],
      );
    } else if (chordType == 'Bm7') {
      tabWidget = TabWidget(
        name: 'Bm7',
        tabs: ["x 3 5 3 4 3"],
      );
    } else if (chordType == 'B7sus4') {
      tabWidget = TabWidget(
        name: 'B7sus4',
        tabs: ["x 3 2 2 1 0"],
      );
    } else if (chordType == 'Badd9') {
      tabWidget = TabWidget(
        name: 'Badd9',
        tabs: ["x 3 2 3 3 3"],
      );
    } else if (chordType == 'Bdim') {
      tabWidget = TabWidget(
        name: 'Bdim',
        tabs: ["x 3 2 0 3 0"],
      );
    } else if (chordType == 'Bdim7') {
      tabWidget = TabWidget(
        name: 'Bdim7',
        tabs: ["x 3 5 5 x x"],
      );
    } else if (chordType == 'Baug') {
      tabWidget = TabWidget(
        name: 'Baug',
        tabs: ["x 3 0 0 3 3"],
      );
    } else if (chordType == 'B6') {
      tabWidget = TabWidget(
        name: 'B6',
        tabs: ["x 3 3 0 1 0"],
      );
    } else if (chordType == 'Bm6') {
      tabWidget = TabWidget(
        name: 'Bm6',
        tabs: ["x 3 4 2 4 x"],
      );
    } else if (chordType == 'B9') {
      tabWidget = TabWidget(
        name: 'B9',
        tabs: ["x 3 2 1 1 0"],
      );
    } else if (chordType == 'Bm9') {
      tabWidget = TabWidget(
        name: 'Bm9',
        tabs: ["x 3 3 3 1 0"],
      );
    } else if (chordType == 'Bmaj9') {
      tabWidget = TabWidget(
        name: 'Bmaj9',
        tabs: ["x 3 2 4 3 0"],
      );
    } else if (chordType == 'B11') {
      tabWidget = TabWidget(
        name: 'B11',
        tabs: ["x 3 1 3 3 x"],
      );
    } else if (chordType == 'Bm11') {
      tabWidget = TabWidget(
        name: 'Bm11',
        tabs: ["x 3 2 2 0 0"],
      );
    } else if (chordType == 'B13') {
      tabWidget = TabWidget(
        name: 'B13',
        tabs: ["x 3 1 2 1 3"],
      );
    } else if (chordType == 'Bm13') {
      tabWidget = TabWidget(
        name: ' Bm13',
        tabs: ["x 3 4 3 4 x"],
      );
    } else if (chordType == 'Bmaj13') {
      tabWidget = TabWidget(
        name: 'Bmaj13',
        tabs: ["x 3 4 3 4 x"],
      );
    } else if (chordType == 'Bm7b5') {
      tabWidget = TabWidget(
        name: 'Bm7b5',
        tabs: ["x 3 2 0 3 3"],
      );
    } else if (chordType == 'B7b9') {
      tabWidget = TabWidget(
        name: 'B7b9',
        tabs: ["x 3 3 0 1 0"],
      );
    } else if (chordType == 'B7#9') {
      tabWidget = TabWidget(
        name: 'B7#9',
        tabs: ["x 3 2 4 0 0"],
      );
    } else if (chordType == 'B7b5') {
      tabWidget = TabWidget(
        name: 'B7b5',
        tabs: ["x 3 1 3 1 x"],
      );
    } else if (chordType == 'B7#5') {
      tabWidget = TabWidget(
        name: 'B7#5',
        tabs: ["x 3 2 0 2 0"],
      );
    } else if (chordType == 'Bmaj7#5') {
      tabWidget = TabWidget(
        name: 'Bmaj7#5',
        tabs: ["x 3 2 3 2 x"],
      );
    } else if (chordType == 'Bmaj7b5') {
      tabWidget = TabWidget(
        name: 'Bmaj7b5',
        tabs: ["x 3 2 3 0 0"],
      );
    } else if (chordType == 'Bm/maj7') {
      tabWidget = TabWidget(
        name: 'Bm/maj7',
        tabs: ["x 3 2 3 2 x"],
      );
    } else if (chordType == 'Bm6/9') {
      tabWidget = TabWidget(
        name: 'Bm6/9',
        tabs: ["x 3 2 3 4 x"],
      );
    } else if (chordType == 'Bsus2') {
      tabWidget = TabWidget(
        name: 'Bsus2',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'Bsus4') {
      tabWidget = TabWidget(
        name: 'Bsus4',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'B7sus2') {
      tabWidget = TabWidget(
        name: 'B7sus2',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'B7sus4add6') {
      tabWidget = TabWidget(
        name: 'B7sus4add6',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'Badd11') {
      tabWidget = TabWidget(
        name: 'Badd11',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'Badd13') {
      tabWidget = TabWidget(
        name: 'Badd13',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'B7#11') {
      tabWidget = TabWidget(
        name: 'B7#11',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'B7b5b9') {
      tabWidget = TabWidget(
        name: 'B7b5b9',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'B7b5#9') {
      tabWidget = TabWidget(
        name: 'B7b5#9',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'B7#5b9') {
      tabWidget = TabWidget(
        name: 'B7#5b9',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'B7#5#9') {
      tabWidget = TabWidget(
        name: 'B7#5#9',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'Bm7b5b9') {
      tabWidget = TabWidget(
        name: 'Bm7b5b9',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'Bm7b5#9') {
      tabWidget = TabWidget(
        name: 'Bm7b5#9',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'Bmaj7#11') {
      tabWidget = TabWidget(
        name: 'Bmaj7#11',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'Bmaj7b5b9') {
      tabWidget = TabWidget(
        name: 'Bmaj7b5b9',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'Bmaj7b5#9') {
      tabWidget = TabWidget(
        name: 'Bmaj7b5#9',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'Bm/maj7b5') {
      tabWidget = TabWidget(
        name: 'Bm/maj7b5',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'Bm/maj7#5') {
      tabWidget = TabWidget(
        name: 'Bm/maj7#5',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'B7sus2b5') {
      tabWidget = TabWidget(
        name: 'B7sus2b5',
        tabs: ["x 3 4 2 3 x"],
      );
    } else if (chordType == 'B7sus2#5') {
      tabWidget = TabWidget(
        name: 'B7sus2#5',
        tabs: ["x 3 4 2 3 x"],
      );
    } else {
      tabWidget = TabWidget(
        name: 'Other Chord',
        tabs: ["x x x x x x"],
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 145, 24),
        title: Text(chordType),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgmain.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Text(
                '$chordType of $chordTitle chords',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    tabWidget,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
