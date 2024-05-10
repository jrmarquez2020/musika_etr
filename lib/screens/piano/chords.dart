import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
          builder: (context) => CsharpChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'Db') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DbChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'D') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'D#') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DsharpChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'Eb') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EbChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'E') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'F') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'F#') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FsharpChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'Gb') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GbChordList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'G') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'G#') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GsharpChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'Ab') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AbChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'A') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'A#') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AsharpChordsList(chordTitle: chordTitle),
        ),
      );
    }
    else if (chordTitle == 'Bb') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BbChordsList(chordTitle: chordTitle),
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
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor:  Color.fromRGBO(32, 40, 55, 1),
          automaticallyImplyLeading: false,
          title: Text(
            'Chords',
            style: GoogleFonts.alice(fontWeight: FontWeight.w700, fontSize: 22, color:Colors.white),
          ),
           leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
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
                      child: ListView.builder(
                        itemCount: chordTitles.length,
                        itemBuilder: (BuildContext context, int index) {
                          final chordTitle = chordTitles[index];
                          return ListTile(
                            title: Text(
                              chordTitle,
                              style: TextStyle(
                                fontSize: 22, color:Color.fromRGBO(244, 55, 109, 1),
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
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
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
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'C') {
      chordUI = ChordUI(
        chordName: 'C Major',
        imagePath: 'assets/images/piano/c/c.png',
      );
    } else if (chordType == 'Cm') {
      chordUI = ChordUI(
        chordName: 'C Minor',
        imagePath: 'assets/images/piano/c/cm.png',
      );
    } else if (chordType == 'C7') {
      chordUI = ChordUI(
        chordName: 'C7',
        imagePath: 'assets/images/piano/c/c7.png',
      );
    } else if (chordType == 'Cm7') {
      chordUI = ChordUI(
        chordName: 'Cm7',
        imagePath: 'assets/images/piano/c/cm7.png',
      );
    } else if (chordType == 'Cmaj7') {
      chordUI = ChordUI(
        chordName: 'Cmaj7',
        imagePath: 'assets/images/piano/c/cmaj7.png',
      );
    } else if (chordType == 'CmM7') {
      chordUI = ChordUI(
        chordName: 'CmM7',
        imagePath: 'assets/images/piano/c/cminmaj7.png',
      );
    } else if (chordType == 'C6') {
      chordUI = ChordUI(
        chordName: 'C6',
        imagePath: 'assets/images/piano/c/c6.png',
      );
    } else if (chordType == 'Cm6') {
      chordUI = ChordUI(
        chordName: 'Cm6',
        imagePath: 'assets/images/piano/c/cm6.png',
      );
    } else if (chordType == 'C6/9') {
      chordUI = ChordUI(
        chordName: 'C6/9',
        imagePath: 'assets/images/piano/c/c6_9.png',
      );
    } else if (chordType == 'C5') {
      chordUI = ChordUI(
        chordName: 'C5',
        imagePath: 'assets/images/piano/c/c5.png',
      );
    } else if (chordType == 'C9') {
      chordUI = ChordUI(
        chordName: 'C9',
        imagePath: 'assets/images/piano/c/c9.png',
      );
    } else if (chordType == 'Cm9') {
      chordUI = ChordUI(
        chordName: 'Cm9',
        imagePath: 'assets/images/piano/c/cm9.png',
      );
    } else if (chordType == 'Cmaj9') {
      chordUI = ChordUI(
        chordName: 'Cmaj9',
        imagePath: 'assets/images/piano/c/cmaj9.png',
      );
    } else if (chordType == 'C11') {
      chordUI = ChordUI(
        chordName: 'C11',
        imagePath: 'assets/images/piano/c/c11.png',
      );
    } else if (chordType == 'Cm11') {
      chordUI = ChordUI(
        chordName: 'Cm11',
        imagePath: 'assets/images/piano/c/cm11.png',
      );
    } else if (chordType == 'Cmaj11') {
      chordUI = ChordUI(
        chordName: 'Cmaj11',
        imagePath: 'assets/images/piano/c/cmaj11.png',
      );
    } else if (chordType == 'C13') {
      chordUI = ChordUI(
        chordName: 'C13',
        imagePath: 'assets/images/piano/c/c13.png',
      );
    } else if (chordType == 'Cm13') {
      chordUI = ChordUI(
        chordName: 'Cm13',
        imagePath: 'assets/images/piano/c/cm13.png',
      );
    } else if (chordType == 'Cmaj13') {
      chordUI = ChordUI(
        chordName: 'Cmaj13',
        imagePath: 'assets/images/piano/c/cmaj13.png',
      );
    } else if (chordType == 'Cadd') {
      chordUI = ChordUI(
        chordName: 'Cadd',
        imagePath: 'assets/images/piano/c/cadd9.png',
      );
    } else if (chordType == 'C7-5') {
      chordUI = ChordUI(
        chordName: 'C7-5',
        imagePath: 'assets/images/piano/c/c7minus5.png',
      );
    } else if (chordType == 'C7+5') {
      chordUI = ChordUI(
        chordName: 'C7+5',
        imagePath: 'assets/images/piano/c/c7plus5.png',
      );
    } else if (chordType == 'Csus') {
      chordUI = ChordUI(
        chordName: 'Csus',
        imagePath: 'assets/images/piano/c/csus4.png',
      );
    } else if (chordType == 'Cdim') {
      chordUI = ChordUI(
        chordName: 'Cdim',
        imagePath: 'assets/images/piano/c/cdim.png',
      );
    } else if (chordType == 'Cdim7') {
      chordUI = ChordUI(
        chordName: 'Cdim7',
        imagePath: 'assets/images/piano/c/cdim7.png',
      );
    } else if (chordType == 'Cm7b5') {
      chordUI = ChordUI(
        chordName: 'Cm7b5',
        imagePath: 'assets/images/piano/c/cm7b5.png',
      );
    } else if (chordType == 'Caug') {
      chordUI = ChordUI(
        chordName: 'Caug',
        imagePath: 'assets/images/piano/c/caug.png',
      );
    } else if (chordType == 'Caug7') {
      chordUI = ChordUI(
        chordName: 'Caug7',
        imagePath: 'assets/images/piano/c/caug7.png',
      );
    } 

    return chordUI;
  }
}

class ChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;
  

  const ChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.asset(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}


class CsharpChordsList extends StatelessWidget {
  final String chordTitle;

  CsharpChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
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
    'C#maj13',
    'C#add',
    'C#7-5',
    'C#7+5',
    'C#sus',
    'C#dim', 
    'C#dim7',
    'C#m7b5', 
    'C#aug', 
    'C#aug7', 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CsharpChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class CsharpChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  CsharpChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'C#') {
      chordUI = CsharpChordUI(
        chordName: 'C# Major',
        imagePath: 'https://www.pianochord.org/images/d_flat.png',
      );
    } else if (chordType == 'C#m') {
      chordUI = CsharpChordUI(
        chordName: 'C# Minor',
        imagePath: 'https://www.pianochord.org/images/d_flat_m.png',
      );
    } else if (chordType == 'C#7') {
      chordUI = CsharpChordUI(
        chordName: 'C#7',
        imagePath: 'https://www.pianochord.org/images/d_flat_7.png',
      );
    } else if (chordType == 'C#m7') {
      chordUI = CsharpChordUI(
        chordName: 'C#m7',
        imagePath: 'https://www.pianochord.org/images/d_flat_m7.png',
      );
    } else if (chordType == 'C#maj7') {
      chordUI = CsharpChordUI(
        chordName: 'C#maj7',
        imagePath: 'https://www.pianochord.org/images/d_flat_maj7.png',
      );
    } else if (chordType == 'C#mM7') {
      chordUI = CsharpChordUI(
        chordName: 'C#mM7',
        imagePath: 'https://www.pianochord.org/images/d_flat_minmaj7.png',
      );
    } else if (chordType == 'C#6') {
      chordUI = CsharpChordUI(
        chordName: 'C#6',
        imagePath: 'https://www.pianochord.org/images/d_flat_6.png',
      );
    } else if (chordType == 'C#m6') {
      chordUI = CsharpChordUI(
        chordName: 'C#m6',
        imagePath: 'https://www.pianochord.org/images/d_flat_m6.png',
      );
    } else if (chordType == 'C#6/9') {
      chordUI = CsharpChordUI(
        chordName: 'C#6/9',
        imagePath: 'https://www.pianochord.org/images/d_flat_6_9.png',
      );
    } else if (chordType == 'C#5') {
      chordUI = CsharpChordUI(
        chordName: 'C#5',
        imagePath: 'https://www.pianochord.org/images/d_flat_5.png',
      );
    } else if (chordType == 'C#9') {
      chordUI = CsharpChordUI(
        chordName: 'C#9',
        imagePath: 'https://www.pianochord.org/images/d_flat_9.png',
      );
    } else if (chordType == 'C#m9') {
      chordUI = CsharpChordUI(
        chordName: 'C#m9',
        imagePath: 'https://www.pianochord.org/images/d_flat_m9.png',
      );
    } else if (chordType == 'C#maj9') {
      chordUI = CsharpChordUI(
        chordName: 'C#maj9',
        imagePath: 'https://www.pianochord.org/images/d_flat_maj9.png',
      );
    } else if (chordType == 'C#11') {
      chordUI = CsharpChordUI(
        chordName: 'C#11',
        imagePath: 'https://www.pianochord.org/images/d_flat_11.png',
      );
    } else if (chordType == 'C#m11') {
      chordUI = CsharpChordUI(
        chordName: 'C#m11',
        imagePath: 'https://www.pianochord.org/images/d_flat_m11.png',
      );
    } else if (chordType == 'C#maj11') {
      chordUI = CsharpChordUI(
        chordName: 'C#maj11',
        imagePath: 'https://www.pianochord.org/images/d_flat_maj13.png',
      );
    } else if (chordType == 'C#13') {
      chordUI = CsharpChordUI(
        chordName: 'C#13',
        imagePath: 'https://www.pianochord.org/images/d_flat_13.png',
      );
    } else if (chordType == 'C#m13') {
      chordUI = CsharpChordUI(
        chordName: 'C#m13',
        imagePath: 'https://www.pianochord.org/images/d_flat_m13.png',
      );
    } else if (chordType == 'C#maj13') {
      chordUI = CsharpChordUI(
        chordName: 'C#maj13',
        imagePath: 'https://www.pianochord.org/images/d_flat_maj13.png',
      );
    } else if (chordType == 'C#add') {
      chordUI = CsharpChordUI(
        chordName: 'C#add',
        imagePath: 'https://www.pianochord.org/images/d_flat_add9.png',
      );
    } else if (chordType == 'C#7-5') {
      chordUI = CsharpChordUI(
        chordName: 'C#7-5',
        imagePath: 'https://www.pianochord.org/images/d_flat_7minus5.png',
      );
    } else if (chordType == 'C#7+5') {
      chordUI = CsharpChordUI(
        chordName: 'C#7+5',
        imagePath: 'https://www.pianochord.org/images/d_flat_7plus5.png',
      );
    } else if (chordType == 'C#sus') {
      chordUI = CsharpChordUI(
        chordName: 'C#sus',
        imagePath: 'https://www.pianochord.org/images/d_flat_sus4.png',
      );
    } else if (chordType == 'C#dim') {
      chordUI = CsharpChordUI(
        chordName: 'C#dim',
        imagePath: 'https://www.pianochord.org/images/d_flat_dim.png',
      );
    } else if (chordType == 'C#dim7') {
      chordUI = CsharpChordUI(
        chordName: 'C#dim7',
        imagePath: 'https://www.pianochord.org/images/d_flat_dim7.png',
      );
    } else if (chordType == 'C#m7b5') {
      chordUI = CsharpChordUI(
        chordName: 'C#m7b5',
        imagePath: 'https://www.pianochord.org/images/d_flat_m7b5.png',
      );
    } else if (chordType == 'C#aug') {
      chordUI = CsharpChordUI(
        chordName: 'C#aug',
        imagePath: 'https://www.pianochord.org/images/d_flat_aug.png',
      );
    } else if (chordType == 'C#aug7') {
      chordUI = CsharpChordUI(
        chordName: 'C#aug7',
        imagePath: 'https://www.pianochord.org/images/d_flat_aug7.png',
      );
    }
    return chordUI;
  }
}

class CsharpChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const CsharpChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}

class DbChordsList extends StatelessWidget {
  final String chordTitle;

  DbChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
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
    'Dbm13',
    'Dbmaj13',
    'Dbadd',
    'Db7-5',
    'Db7+5',
    'Dbsus',
    'Dbdim',
    'Dbdim7',
    'Dbm7b5',
    'Dbaug',
    'Dbaug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DbChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class DbChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  DbChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

   if (chordType == 'Db') {
      chordUI = DbChordUI(
        chordName: 'Db Major',
        imagePath: 'https://www.pianochord.org/images/d_flat.png',
      );
    } else if (chordType == 'Dbm') {
      chordUI = DbChordUI(
        chordName: 'Db Minor',
        imagePath: 'https://www.pianochord.org/images/d_flat_m.png',
      );
    } else if (chordType == 'Db7') {
      chordUI = DbChordUI(
        chordName: 'Db7',
        imagePath: 'https://www.pianochord.org/images/d_flat_7.png',
      );
    } else if (chordType == 'Dbm7') {
      chordUI = DbChordUI(
        chordName: 'Dbm7',
        imagePath: 'https://www.pianochord.org/images/d_flat_m7.png',
      );
    } else if (chordType == 'Dbmaj7') {
      chordUI = DbChordUI(
        chordName: 'Dbmaj7',
        imagePath: 'https://www.pianochord.org/images/d_flat_maj7.png',
      );
    } else if (chordType == 'DbmM7') {
      chordUI = DbChordUI(
        chordName: 'DbmM7',
        imagePath: 'https://www.pianochord.org/images/d_flat_minmaj7.png',
      );
    } else if (chordType == 'Db6') {
      chordUI = DbChordUI(
        chordName: 'Db6',
        imagePath: 'https://www.pianochord.org/images/d_flat_6.png',
      );
    } else if (chordType == 'Dbm6') {
      chordUI = DbChordUI(
        chordName: 'Dbm6',
        imagePath: 'https://www.pianochord.org/images/d_flat_m6.png',
      );
    } else if (chordType == 'Db6/9') {
      chordUI = DbChordUI(
        chordName: 'Db6/9',
        imagePath: 'https://www.pianochord.org/images/d_flat_6_9.png',
      );
    } else if (chordType == 'Db5') {
      chordUI = DbChordUI(
        chordName: 'Db5',
        imagePath: 'https://www.pianochord.org/images/d_flat_5.png',
      );
    } else if (chordType == 'Db9') {
      chordUI = DbChordUI(
        chordName: 'Db9',
        imagePath: 'https://www.pianochord.org/images/d_flat_9.png',
      );
    } else if (chordType == 'Dbm9') {
      chordUI = DbChordUI(
        chordName: 'Dbm9',
        imagePath: 'https://www.pianochord.org/images/d_flat_m9.png',
      );
    } else if (chordType == 'Dbmaj9') {
      chordUI = DbChordUI(
        chordName: 'Dbmaj9',
        imagePath: 'https://www.pianochord.org/images/d_flat_maj9.png',
      );
    } else if (chordType == 'Db11') {
      chordUI = DbChordUI(
        chordName: 'Db11',
        imagePath: 'https://www.pianochord.org/images/d_flat_11.png',
      );
    } else if (chordType == 'Dbm11') {
      chordUI = DbChordUI(
        chordName: 'Dbm11',
        imagePath: 'https://www.pianochord.org/images/d_flat_m11.png',
      );
    } else if (chordType == 'Dbmaj11') {
      chordUI = DbChordUI(
        chordName: 'Dbmaj11',
        imagePath: 'https://www.pianochord.org/images/d_flat_maj11.png',
      );
    } else if (chordType == 'Db13') {
      chordUI = DbChordUI(
        chordName: 'Db13',
        imagePath: 'https://www.pianochord.org/images/d_flat_13.png',
      );
    } else if (chordType == 'Dbm13') {
      chordUI = DbChordUI(
        chordName: 'Dbm13',
        imagePath: 'https://www.pianochord.org/images/d_flat_m13.png',
      );
    } else if (chordType == 'Dbmaj13') {
      chordUI = DbChordUI(
        chordName: 'Dbmaj13',
        imagePath: 'https://www.pianochord.org/images/d_flat_maj13.png',
      );
    } else if (chordType == 'Dbadd') {
      chordUI = DbChordUI(
        chordName: 'Dbadd',
        imagePath: 'https://www.pianochord.org/images/d_flat_add9.png',
      );
    } else if (chordType == 'Db7-5') {
      chordUI = DbChordUI(
        chordName: 'Db7-5',
        imagePath: 'https://www.pianochord.org/images/d_flat_7minus5.png',
      );
    } else if (chordType == 'Db7+5') {
      chordUI = DbChordUI(
        chordName: 'Db7+5',
        imagePath: 'https://www.pianochord.org/images/d_flat_7plus5.png',
      );
    } else if (chordType == 'Dbsus') {
      chordUI = DbChordUI(
        chordName: 'Dbsus',
        imagePath: 'https://www.pianochord.org/images/d_flat_sus4.png',
      );
    } else if (chordType == 'Dbdim') {
      chordUI = DbChordUI(
        chordName: 'Dbdim',
        imagePath: 'https://www.pianochord.org/images/d_flat_dim.png',
      );
    } else if (chordType == 'Dbdim7') {
      chordUI = DbChordUI(
        chordName: 'Dbdim7',
        imagePath: 'https://www.pianochord.org/images/d_flat_dim7.png',
      );
    } else if (chordType == 'Dbm7b5') {
      chordUI = DbChordUI(
        chordName: 'Dbm7b5',
        imagePath: 'https://www.pianochord.org/images/d_flat_m7b5.png',
      );
    } else if (chordType == 'Dbaug') {
      chordUI = DbChordUI(
        chordName: 'Dbaug',
        imagePath: 'https://www.pianochord.org/images/d_flat_aug.png',
      );
    } else if (chordType == 'Dbaug7') {
      chordUI = DbChordUI(
        chordName: 'Dbaug7',
        imagePath: 'https://www.pianochord.org/images/d_flat_aug7.png',
      );
    } 

    return chordUI;
  }
}

class DbChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const DbChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}


class DChordsList extends StatelessWidget {
  final String chordTitle;

  DChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'D',
    'Dm',
    'D7',
    'Dm7',
    'Dmaj7',
    'DmM7',
    'D6',
    'Dm6',
    'D6/9',
    'D5',
    'D9',
    'Dm9',
    'Dmaj9',
    'D11',
    'Dm11',
    'Dmaj11',
    'D13',
    'Dm13',
    'Dmaj13',
    'Dadd',
    'D7-5',
    'D7+5',
    'Dsus',
    'Ddim',
    'Ddim7',
    'Dm7b5',
    'Daug',
    'Daug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class DChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  DChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

     if (chordType == 'D') {
      chordUI = DChordUI(
        chordName: 'D Major',
        imagePath: 'https://www.pianochord.org/images/d.png',
      );
    } else if (chordType == 'Dm') {
      chordUI = DChordUI(
        chordName: 'D Minor',
        imagePath: 'https://www.pianochord.org/images/dm.png',
      );
    } else if (chordType == 'D7') {
      chordUI = DChordUI(
        chordName: 'D7',
        imagePath: 'https://www.pianochord.org/images/d7.png',
      );
    } else if (chordType == 'Dm7') {
      chordUI = DChordUI(
        chordName: 'Dm7',
        imagePath: 'https://www.pianochord.org/images/dm7.png',
      );
    } else if (chordType == 'Dmaj7') {
      chordUI = DChordUI(
        chordName: 'Dmaj7',
        imagePath: 'https://www.pianochord.org/images/dmaj7.png',
      );
    } else if (chordType == 'DmM7') {
      chordUI = DChordUI(
        chordName: 'DmM7',
        imagePath: 'https://www.pianochord.org/images/dminmaj7.png',
      );
    } else if (chordType == 'D6') {
      chordUI = DChordUI(
        chordName: 'D6',
        imagePath: 'https://www.pianochord.org/images/d6.png',
      );
    } else if (chordType == 'Dm6') {
      chordUI = DChordUI(
        chordName: 'Dm6',
        imagePath: 'https://www.pianochord.org/images/dm6.png',
      );
    } else if (chordType == 'D6/9') {
      chordUI = DChordUI(
        chordName: 'D6/9',
        imagePath: 'https://www.pianochord.org/images/d6_9.png',
      );
    } else if (chordType == 'D5') {
      chordUI = DChordUI(
        chordName: 'D5',
        imagePath: 'https://www.pianochord.org/images/d5.png',
      );
    } else if (chordType == 'D9') {
      chordUI = DChordUI(
        chordName: 'D9',
        imagePath: 'https://www.pianochord.org/images/d9.png',
      );
    } else if (chordType == 'Dm9') {
      chordUI = DChordUI(
        chordName: 'Dm9',
        imagePath: 'https://www.pianochord.org/images/dm9.png',
      );
    } else if (chordType == 'Dmaj9') {
      chordUI = DChordUI(
        chordName: 'Dmaj9',
        imagePath: 'https://www.pianochord.org/images/dmaj9.png',
      );
    } else if (chordType == 'D11') {
      chordUI = DChordUI(
        chordName: 'D11',
        imagePath: 'https://www.pianochord.org/images/d11.png',
      );
    } else if (chordType == 'Dm11') {
      chordUI = DChordUI(
        chordName: 'Dm11',
        imagePath: 'https://www.pianochord.org/images/dm11.png',
      );
    } else if (chordType == 'Dmaj11') {
      chordUI = DChordUI(
        chordName: 'Dmaj11',
        imagePath: 'https://www.pianochord.org/images/dmaj11.png',
      );
    } else if (chordType == 'D13') {
      chordUI = DChordUI(
        chordName: 'D13',
        imagePath: 'https://www.pianochord.org/images/d13.png',
      );
    } else if (chordType == 'Dm13') {
      chordUI = DChordUI(
        chordName: 'Dm13',
        imagePath: 'https://www.pianochord.org/images/dmaj13.png',
      );
    } else if (chordType == 'Dmaj13') {
      chordUI = DChordUI(
        chordName: 'Dmaj13',
        imagePath: 'https://www.pianochord.org/images/dadd9.png',
      );
    } else if (chordType == 'Dadd') {
      chordUI = DChordUI(
        chordName: 'Dadd',
        imagePath: 'https://www.pianochord.org/images/dadd9.png',
      );
    } else if (chordType == 'D7-5') {
      chordUI = DChordUI(
        chordName: 'D7-5',
        imagePath: 'https://www.pianochord.org/images/d7minus5.png',
      );
    } else if (chordType == 'D7+5') {
      chordUI = DChordUI(
        chordName: 'D7+5',
        imagePath: 'https://www.pianochord.org/images/d7plus5.png',
      );
    } else if (chordType == 'Dsus') {
      chordUI = DChordUI(
        chordName: 'Dsus',
        imagePath: 'https://www.pianochord.org/images/dsus4.png',
      );
    } else if (chordType == 'Ddim') {
      chordUI = DChordUI(
        chordName: 'Ddim',
        imagePath: 'https://www.pianochord.org/images/ddim.png',
      );
    } else if (chordType == 'Ddim7') {
      chordUI = DChordUI(
        chordName: 'Ddim7',
        imagePath: 'https://www.pianochord.org/images/ddim7.png',
      );
    } else if (chordType == 'Dm7b5') {
      chordUI = DChordUI(
        chordName: 'Dm7b5',
        imagePath: 'https://www.pianochord.org/images/dm7b5.png',
      );
    } else if (chordType == 'Daug') {
      chordUI = DChordUI(
        chordName: 'Daug',
        imagePath: 'https://www.pianochord.org/images/daug.png',
      );
    } else if (chordType == 'Daug7') {
      chordUI = DChordUI(
        chordName: 'Daug7',
        imagePath: 'https://www.pianochord.org/images/daug7.png',
      );
    } 

    return chordUI;
  }
}

class DChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const DChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}
class DsharpChordsList extends StatelessWidget {
  final String chordTitle;

  DsharpChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'D#',
    'D#m',
    'D#7',
    'D#m7',
    'D#maj7',
    'D#mM7',
    'D#6',
    'D#m6',
    'D#6/9',
    'D#5',
    'D#9',
    'D#m9',
    'D#maj9',
    'D#11',
    'D#m11',
    'D#maj11',
    'D#13',
    'D#m13',
    'D#maj13',
    'D#add',
    'D#7-5',
    'D#7+5',
    'D#sus',
    'D#dim',
    'D#dim7',
    'D#m7b5',
    'D#aug',
    'D#aug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DsharpChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class DsharpChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  DsharpChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'D#') {
      chordUI = DSharpChordUI(
        chordName: 'D# Major',
        imagePath: 'https://www.pianochord.org/images/e_flat.png',
      );
    } else if (chordType == 'D#m') {
      chordUI = DSharpChordUI(
        chordName: 'D# Minor',
        imagePath: 'https://www.pianochord.org/images/e_flat_m.png',
      );
    } else if (chordType == 'D#7') {
      chordUI = DSharpChordUI(
        chordName: 'D#7',
        imagePath: 'https://www.pianochord.org/images/e_flat_7.png',
      );
    } else if (chordType == 'D#m7') {
      chordUI = DSharpChordUI(
        chordName: 'D#m7',
        imagePath: 'https://www.pianochord.org/images/e_flat_m7.png',
      );
    } else if (chordType == 'D#maj7') {
      chordUI = DSharpChordUI(
        chordName: 'D#maj7',
        imagePath: 'https://www.pianochord.org/images/e_flat_maj7.png',
      );
    } else if (chordType == 'D#mM7') {
      chordUI = DSharpChordUI(
        chordName: 'D#mM7',
        imagePath: 'https://www.pianochord.org/images/e_flat_minmaj7.png',
      );
    } else if (chordType == 'D#6') {
      chordUI = DSharpChordUI(
        chordName: 'D#6',
        imagePath: 'https://www.pianochord.org/images/e_flat_6.png',
      );
    } else if (chordType == 'D#m6') {
      chordUI = DSharpChordUI(
        chordName: 'D#m6',
        imagePath: 'https://www.pianochord.org/images/e_flat_m6.png',
      );
    } else if (chordType == 'D#6/9') {
      chordUI = DSharpChordUI(
        chordName: 'D#6/9',
        imagePath: 'https://www.pianochord.org/images/e_flat_6_9.png',
      );
    } else if (chordType == 'D#5') {
      chordUI = DSharpChordUI(
        chordName: 'D#5',
        imagePath: 'https://www.pianochord.org/images/e_flat_5.png',
      );
    } else if (chordType == 'D#9') {
      chordUI = DSharpChordUI(
        chordName: 'D#9',
        imagePath: 'https://www.pianochord.org/images/e_flat_9.png',
      );
    } else if (chordType == 'D#m9') {
      chordUI = DSharpChordUI(
        chordName: 'D#m9',
        imagePath: 'https://www.pianochord.org/images/e_flat_m9.png',
      );
    } else if (chordType == 'D#maj9') {
      chordUI = DSharpChordUI(
        chordName: 'D#maj9',
        imagePath: 'https://www.pianochord.org/images/e_flat_maj9.png',
      );
    } else if (chordType == 'D#11') {
      chordUI = DSharpChordUI(
        chordName: 'D#11',
        imagePath: 'https://www.pianochord.org/images/e_flat_11.png',
      );
    } else if (chordType == 'D#m11') {
      chordUI = DSharpChordUI(
        chordName: 'D#m11',
        imagePath: 'https://www.pianochord.org/images/e_flat_m11.png',
      );
    } else if (chordType == 'D#maj11') {
      chordUI = DSharpChordUI(
        chordName: 'D#maj11',
        imagePath: 'https://www.pianochord.org/images/e_flat_maj11.png',
      );
    } else if (chordType == 'D#13') {
      chordUI = DSharpChordUI(
        chordName: 'D#13',
        imagePath: 'https://www.pianochord.org/images/e_flat_13.png',
      );
    } else if (chordType == 'D#m13') {
      chordUI = DSharpChordUI(
        chordName: 'D#m13',
        imagePath: 'https://www.pianochord.org/images/e_flat_m13.png',
      );
    } else if (chordType == 'D#maj13') {
      chordUI = DSharpChordUI(
        chordName: 'D#maj13',
        imagePath: 'https://www.pianochord.org/images/e_flat_maj13.png',
      );
    } else if (chordType == 'D#add') {
      chordUI = DSharpChordUI(
        chordName: 'D#add',
        imagePath: 'https://www.pianochord.org/images/e_flat_add9.png',
      );
    } else if (chordType == 'D#7-5') {
      chordUI = DSharpChordUI(
        chordName: 'D#7-5',
        imagePath: 'https://www.pianochord.org/images/e_flat_7minus5.png',
      );
    } else if (chordType == 'D#7+5') {
      chordUI = DSharpChordUI(
        chordName: 'D#7+5',
        imagePath: 'https://www.pianochord.org/images/e_flat_7plus5.png',
      );
    } else if (chordType == 'D#sus') {
      chordUI = DSharpChordUI(
        chordName: 'D#sus',
        imagePath: 'https://www.pianochord.org/images/e_flat_sus4.png',
      );
    } else if (chordType == 'D#dim') {
      chordUI = DSharpChordUI(
        chordName: 'D#dim',
        imagePath: 'https://www.pianochord.org/images/e_flat_dim.png',
      );
    } else if (chordType == 'D#dim7') {
      chordUI = DSharpChordUI(
        chordName: 'D#dim7',
        imagePath: 'https://www.pianochord.org/images/e_flat_dim7.png',
      );
    } else if (chordType == 'D#m7b5') {
      chordUI = DSharpChordUI(
        chordName: 'D#m7b5',
        imagePath: 'https://www.pianochord.org/images/e_flat_m7b5.png',
      );
    } else if (chordType == 'D#aug') {
      chordUI = DSharpChordUI(
        chordName: 'D#aug',
        imagePath: 'https://www.pianochord.org/images/e_flat_aug.png',
      );
    } else if (chordType == 'D#aug7') {
      chordUI = DSharpChordUI(
        chordName: 'D#aug7',
        imagePath: 'https://www.pianochord.org/images/e_flat_aug7.png',
      );
    } 

    return chordUI;
  }
}

class DSharpChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const DSharpChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}


class EbChordsList extends StatelessWidget {
  final String chordTitle;

  EbChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'Eb',
    'Ebm',
    'Eb7',
    'Ebm7',
    'Ebmaj7',
    'EbmM7',
    'Eb6',
    'Ebm6',
    'Eb6/9',
    'Eb5',
    'Eb9',
    'Ebm9',
    'Ebmaj9',
    'Eb11',
    'Ebm11',
    'Ebmaj11',
    'Eb13',
    'Ebm13',
    'Ebmaj13',
    'Ebadd',
    'Eb7-5',
    'Eb7+5',
    'Ebsus',
    'Ebdim',
    'Ebdim7',
    'Ebm7b5',
    'Ebaug',
    'Ebaug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EbChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class EbChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  EbChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'Eb') {
      chordUI = EbChordUI(
        chordName: 'Eb Major',
        imagePath: 'https://www.pianochord.org/images/e_flat.png',
      );
    } else if (chordType == 'Ebm') {
      chordUI = EbChordUI(
        chordName: 'Eb Minor',
        imagePath: 'https://www.pianochord.org/images/e_flat_m.png',
      );
    } else if (chordType == 'Eb7') {
      chordUI = EbChordUI(
        chordName: 'Eb7',
        imagePath: 'https://www.pianochord.org/images/e_flat_7.png',
      );
    } else if (chordType == 'Ebm7') {
      chordUI = EbChordUI(
        chordName: 'Ebm7',
        imagePath: 'https://www.pianochord.org/images/e_flat_m7.png',
      );
    } else if (chordType == 'Ebmaj7') {
      chordUI = EbChordUI(
        chordName: 'Ebmaj7',
        imagePath: 'https://www.pianochord.org/images/e_flat_maj7.png',
      );
    } else if (chordType == 'EbmM7') {
      chordUI = EbChordUI(
        chordName: 'EbmM7',
        imagePath: 'https://www.pianochord.org/images/e_flat_minmaj7.png',
      );
    } else if (chordType == 'Eb6') {
      chordUI = EbChordUI(
        chordName: 'Eb6',
        imagePath: 'https://www.pianochord.org/images/e_flat_6.png',
      );
    } else if (chordType == 'Ebm6') {
      chordUI = EbChordUI(
        chordName: 'Ebm6',
        imagePath: 'https://www.pianochord.org/images/e_flat_m6.png',
      );
    } else if (chordType == 'Eb6/9') {
      chordUI = EbChordUI(
        chordName: 'Eb6/9',
        imagePath: 'https://www.pianochord.org/images/e_flat_6_9.png',
      );
    } else if (chordType == 'Eb5') {
      chordUI = EbChordUI(
        chordName: 'Eb5',
        imagePath: 'https://www.pianochord.org/images/e_flat_5.png',
      );
    } else if (chordType == 'Eb9') {
      chordUI = EbChordUI(
        chordName: 'Eb9',
        imagePath: 'https://www.pianochord.org/images/e_flat_9.png',
      );
    } else if (chordType == 'Ebm9') {
      chordUI = EbChordUI(
        chordName: 'Ebm9',
        imagePath: 'https://www.pianochord.org/images/e_flat_m9.png',
      );
    } else if (chordType == 'Ebmaj9') {
      chordUI = EbChordUI(
        chordName: 'Ebmaj9',
        imagePath: 'https://www.pianochord.org/images/e_flat_maj9.png',
      );
    } else if (chordType == 'Eb11') {
      chordUI = EbChordUI(
        chordName: 'Eb11',
        imagePath: 'https://www.pianochord.org/images/e_flat_11.png',
      );
    } else if (chordType == 'Ebm11') {
      chordUI = EbChordUI(
        chordName: 'Ebm11',
        imagePath: 'https://www.pianochord.org/images/e_flat_m11.png',
      );
    } else if (chordType == 'Ebmaj11') {
      chordUI = EbChordUI(
        chordName: 'Ebmaj11',
        imagePath: 'https://www.pianochord.org/images/e_flat_maj11.png',
      );
    } else if (chordType == 'Eb13') {
      chordUI = EbChordUI(
        chordName: 'Eb13',
        imagePath: 'https://www.pianochord.org/images/e_flat_13.png',
      );
    } else if (chordType == 'Ebm13') {
      chordUI = EbChordUI(
        chordName: 'Ebm13',
        imagePath: 'https://www.pianochord.org/images/e_flat_m13.png',
      );
    } else if (chordType == 'Ebmaj13') {
      chordUI = EbChordUI(
        chordName: 'Ebmaj13',
        imagePath: 'https://www.pianochord.org/images/e_flat_maj13.png',
      );
    } else if (chordType == 'Ebadd') {
      chordUI = EbChordUI(
        chordName: 'Ebadd',
        imagePath: 'https://www.pianochord.org/images/e_flat_add9.png',
      );
    } else if (chordType == 'Eb7-5') {
      chordUI = EbChordUI(
        chordName: 'Eb7-5',
        imagePath: 'https://www.pianochord.org/images/e_flat_7minus5.png',
      );
    } else if (chordType == 'Eb7+5') {
      chordUI = EbChordUI(
        chordName: 'Eb7+5',
        imagePath: 'https://www.pianochord.org/images/e_flat_7plus5.png',
      );
    } else if (chordType == 'Ebsus') {
      chordUI = EbChordUI(
        chordName: 'Ebsus',
        imagePath: 'https://www.pianochord.org/images/e_flat_sus4.png',
      );
    } else if (chordType == 'Ebdim') {
      chordUI = EbChordUI(
        chordName: 'Ebdim',
        imagePath: 'https://www.pianochord.org/images/e_flat_dim.png',
      );
    } else if (chordType == 'Ebdim7') {
      chordUI = EbChordUI(
        chordName: 'Ebdim7',
        imagePath: 'https://www.pianochord.org/images/e_flat_dim7.png',
      );
    } else if (chordType == 'Ebm7b5') {
      chordUI = EbChordUI(
        chordName: 'Ebm7b5',
        imagePath: 'https://www.pianochord.org/images/e_flat_m7b5.png',
      );
    } else if (chordType == 'Ebaug') {
      chordUI = EbChordUI(
        chordName: 'Ebaug',
        imagePath: 'https://www.pianochord.org/images/e_flat_aug.png',
      );
    } else if (chordType == 'Ebaug7') {
      chordUI = EbChordUI(
        chordName: 'Ebaug7',
        imagePath: 'https://www.pianochord.org/images/e_flat_aug7.png',
      );
    }

    return chordUI;
  }
}

class EbChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const EbChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}


class EChordsList extends StatelessWidget {
  final String chordTitle;

  EChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'E',
    'Em',
    'E7',
    'Em7',
    'Emaj7',
    'EmM7',
    'E6',
    'Em6',
    'E6/9',
    'E5',
    'E9',
    'Em9',
    'Emaj9',
    'E11',
    'Em11',
    'Emaj11',
    'E13',
    'Em13',
    'Emaj13',
    'Eadd',
    'E7-5',
    'E7+5',
    'Esus',
    'Edim',
    'Edim7',
    'Em7b5',
    'Eaug',
    'Eaug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class EChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  EChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'E') {
      chordUI = EChordUI(
        chordName: 'E Major',
        imagePath: 'https://www.pianochord.org/images/e.png',
      );
    } else if (chordType == 'Em') {
      chordUI = EChordUI(
        chordName: 'E Minor',
        imagePath: 'https://www.pianochord.org/images/em.png',
      );
    } else if (chordType == 'E7') {
      chordUI = EChordUI(
        chordName: 'E7',
        imagePath: 'https://www.pianochord.org/images/e7.png',
      );
    } else if (chordType == 'Em7') {
      chordUI = EChordUI(
        chordName: 'Em7',
        imagePath: 'https://www.pianochord.org/images/em7.png',
      );
    } else if (chordType == 'Emaj7') {
      chordUI = EChordUI(
        chordName: 'Emaj7',
        imagePath: 'https://www.pianochord.org/images/emaj7.png',
      );
    } else if (chordType == 'EmM7') {
      chordUI = EChordUI(
        chordName: 'EmM7',
        imagePath: 'https://www.pianochord.org/images/eminmaj7.png',
      );
    } else if (chordType == 'E6') {
      chordUI = EChordUI(
        chordName: 'E6',
        imagePath: 'https://www.pianochord.org/images/e6.png',
      );
    } else if (chordType == 'Em6') {
      chordUI = EChordUI(
        chordName: 'Em6',
        imagePath: 'https://www.pianochord.org/images/em6.png',
      );
    } else if (chordType == 'E6/9') {
      chordUI = EChordUI(
        chordName: 'E6/9',
        imagePath: 'https://www.pianochord.org/images/e6_9.png',
      );
    } else if (chordType == 'E5') {
      chordUI = EChordUI(
        chordName: 'E5',
        imagePath: 'https://www.pianochord.org/images/e5.png',
      );
    } else if (chordType == 'E9') {
      chordUI = EChordUI(
        chordName: 'E9',
        imagePath: 'https://www.pianochord.org/images/e9.png',
      );
    } else if (chordType == 'Em9') {
      chordUI = EChordUI(
        chordName: 'Em9',
        imagePath: 'https://www.pianochord.org/images/em9.png',
      );
    } else if (chordType == 'Emaj9') {
      chordUI = EChordUI(
        chordName: 'Emaj9',
        imagePath: 'https://www.pianochord.org/images/emaj9.png',
      );
    } else if (chordType == 'E11') {
      chordUI = EChordUI(
        chordName: 'E11',
        imagePath: 'https://www.pianochord.org/images/e11.png',
      );
    } else if (chordType == 'Em11') {
      chordUI = EChordUI(
        chordName: 'Em11',
        imagePath: 'https://www.pianochord.org/images/em11.png',
      );
    } else if (chordType == 'Emaj11') {
      chordUI = EChordUI(
        chordName: 'Emaj11',
        imagePath: 'https://www.pianochord.org/images/emaj11.png',
      );
    } else if (chordType == 'E13') {
      chordUI = EChordUI(
        chordName: 'E13',
        imagePath: 'https://www.pianochord.org/images/e13.png',
      );
    } else if (chordType == 'Em13') {
      chordUI = EChordUI(
        chordName: 'Em13',
        imagePath: 'https://www.pianochord.org/images/em13.png',
      );
    } else if (chordType == 'Emaj13') {
      chordUI = EChordUI(
        chordName: 'Emaj13',
        imagePath: 'https://www.pianochord.org/images/emaj13.png',
      );
    } else if (chordType == 'Eadd') {
      chordUI = EChordUI(
        chordName: 'Eadd',
        imagePath: 'https://www.pianochord.org/images/eadd9.png',
      );
    } else if (chordType == 'E7-5') {
      chordUI = EChordUI(
        chordName: 'E7-5',
        imagePath: 'https://www.pianochord.org/images/e7minus5.png',
      );
    } else if (chordType == 'E7+5') {
      chordUI = EChordUI(
        chordName: 'E7+5',
        imagePath: 'https://www.pianochord.org/images/e7plus5.png',
      );
    } else if (chordType == 'Esus') {
      chordUI = EChordUI(
        chordName: 'Esus',
        imagePath: 'https://www.pianochord.org/images/esus4.png',
      );
    } else if (chordType == 'Edim') {
      chordUI = EChordUI(
        chordName: 'Edim',
        imagePath: 'https://www.pianochord.org/images/edim.png',
      );
    } else if (chordType == 'Edim7') {
      chordUI = EChordUI(
        chordName: 'Edim7',
        imagePath: 'https://www.pianochord.org/images/edim7.png',
      );
    } else if (chordType == 'Em7b5') {
      chordUI = EChordUI(
        chordName: 'Em7b5',
        imagePath: 'https://www.pianochord.org/images/em7b5.png',
      );
    } else if (chordType == 'Eaug') {
      chordUI = EChordUI(
        chordName: 'Eaug',
        imagePath: 'https://www.pianochord.org/images/eaug.png',
      );
    } else if (chordType == 'Eaug7') {
      chordUI = EChordUI(
        chordName: 'Eaug7',
        imagePath: 'https://www.pianochord.org/images/eaug7.png',
      );
    }

    return chordUI;
  }
}

class EChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const EChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}


class FChordsList extends StatelessWidget {
  final String chordTitle;

  FChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'F',
    'Fm',
    'F7',
    'Fm7',
    'Fmaj7',
    'FmM7',
    'F6',
    'Fm6',
    'F6/9',
    'F5',
    'F9',
    'Fm9',
    'Fmaj9',
    'F11',
    'Fm11',
    'Fmaj11',
    'F13',
    'Fm13',
    'Fmaj13',
    'Fadd',
    'F7-5',
    'F7+5',
    'Fsus',
    'Fdim',
    'Fdim7',
    'Fm7b5',
    'Faug',
    'Faug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class FChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  FChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'F') {
      chordUI = FChordUI(
        chordName: 'F Major',
        imagePath: 'https://www.pianochord.org/images/f.png',
      );
    } else if (chordType == 'Fm') {
      chordUI = FChordUI(
        chordName: 'F Minor',
        imagePath: 'https://www.pianochord.org/images/fm.png',
      );
    } else if (chordType == 'F7') {
      chordUI = FChordUI(
        chordName: 'F7',
        imagePath: 'https://www.pianochord.org/images/f7.png',
      );
    } else if (chordType == 'Fm7') {
      chordUI = FChordUI(
        chordName: 'Fm7',
        imagePath: 'https://www.pianochord.org/images/fm7.png',
      );
    } else if (chordType == 'Fmaj7') {
      chordUI = FChordUI(
        chordName: 'Fmaj7',
        imagePath: 'https://www.pianochord.org/images/fminmaj7.png',
      );
    } else if (chordType == 'FmM7') {
      chordUI = FChordUI(
        chordName: 'FmM7',
        imagePath: 'https://www.pianochord.org/images/fminmaj7.png',
      );
    } else if (chordType == 'F6') {
      chordUI = FChordUI(
        chordName: 'F6',
        imagePath: 'https://www.pianochord.org/images/f6.png',
      );
    } else if (chordType == 'Fm6') {
      chordUI = FChordUI(
        chordName: 'Fm6',
        imagePath: 'https://www.pianochord.org/images/fm6.png',
      );
    } else if (chordType == 'F6/9') {
      chordUI = FChordUI(
        chordName: 'F6/9',
        imagePath: 'https://www.pianochord.org/images/f6_9.png',
      );
    } else if (chordType == 'F5') {
      chordUI = FChordUI(
        chordName: 'F5',
        imagePath: 'https://www.pianochord.org/images/f5.png',
      );
    } else if (chordType == 'F9') {
      chordUI = FChordUI(
        chordName: 'F9',
        imagePath: 'https://www.pianochord.org/images/f9.png',
      );
    } else if (chordType == 'Fm9') {
      chordUI = FChordUI(
        chordName: 'Fm9',
        imagePath: 'https://www.pianochord.org/images/fm9.png',
      );
    } else if (chordType == 'Fmaj9') {
      chordUI = FChordUI(
        chordName: 'Fmaj9',
        imagePath: 'https://www.pianochord.org/images/fmaj9.png',
      );
    } else if (chordType == 'F11') {
      chordUI = FChordUI(
        chordName: 'F11',
        imagePath: 'https://www.pianochord.org/images/f11.png',
      );
    } else if (chordType == 'Fm11') {
      chordUI = FChordUI(
        chordName: 'Fm11',
        imagePath: 'https://www.pianochord.org/images/fm11.png',
      );
    } else if (chordType == 'Fmaj11') {
      chordUI = FChordUI(
        chordName: 'Fmaj11',
        imagePath: 'https://www.pianochord.org/images/fmaj11.png',
      );
    } else if (chordType == 'F13') {
      chordUI = FChordUI(
        chordName: 'F13',
        imagePath: 'https://www.pianochord.org/images/f13.png',
      );
    } else if (chordType == 'Fm13') {
      chordUI = FChordUI(
        chordName: 'Fm13',
        imagePath: 'https://www.pianochord.org/images/fm13.png',
      );
    } else if (chordType == 'Fmaj13') {
      chordUI = FChordUI(
        chordName: 'Fmaj13',
        imagePath: 'https://www.pianochord.org/images/fmaj13.png',
      );
    } else if (chordType == 'Fadd') {
      chordUI = FChordUI(
        chordName: 'Fadd',
        imagePath: 'https://www.pianochord.org/images/fadd9.png',
      );
    } else if (chordType == 'F7-5') {
      chordUI = FChordUI(
        chordName: 'F7-5',
        imagePath: 'https://www.pianochord.org/images/f7minus5.png',
      );
    } else if (chordType == 'F7+5') {
      chordUI = FChordUI(
        chordName: 'F7+5',
        imagePath: 'https://www.pianochord.org/images/f7plus5.png',
      );
    } else if (chordType == 'Fsus') {
      chordUI = FChordUI(
        chordName: 'Fsus',
        imagePath: 'https://www.pianochord.org/images/fsus4.png',
      );
    } else if (chordType == 'Fdim') {
      chordUI = FChordUI(
        chordName: 'Fdim',
        imagePath: 'https://www.pianochord.org/images/fdim.png',
      );
    } else if (chordType == 'Fdim7') {
      chordUI = FChordUI(
        chordName: 'Fdim7',
        imagePath: 'https://www.pianochord.org/images/fdim7.png',
      );
    } else if (chordType == 'Fm7b5') {
      chordUI = FChordUI(
        chordName: 'Fm7b5',
        imagePath: 'https://www.pianochord.org/images/fm7b5.png',
      );
    } else if (chordType == 'Faug') {
      chordUI = FChordUI(
        chordName: 'Faug',
        imagePath: 'https://www.pianochord.org/images/faug.png',
      );
    } else if (chordType == 'Faug7') {
      chordUI = FChordUI(
        chordName: 'Faug7',
        imagePath: 'https://www.pianochord.org/images/faug7.png',
      );
    }

    return chordUI;
  }
}

class FChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const FChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}


class FsharpChordsList extends StatelessWidget {
  final String chordTitle;

  FsharpChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'F#',
    'F#m',
    'F#7',
    'F#m7',
    'F#maj7',
    'F#mM7',
    'F#6',
    'F#m6',
    'F#6/9',
    'F#5',
    'F#9',
    'F#m9',
    'F#maj9',
    'F#11',
    'F#m11',
    'F#maj11',
    'F#13',
    'F#m13',
    'F#maj13',
    'F#add',
    'F#7-5',
    'F#7+5',
    'F#sus',
    'F#dim',
    'F#dim7',
    'F#m7b5',
    'F#aug',
    'F#aug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FsharpChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class FsharpChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  FsharpChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'F#') {
      chordUI = FSharpChordUI(
        chordName: 'F# Major',
        imagePath: 'https://www.pianochord.org/images/g_flat.png',
      );
    } else if (chordType == 'F#m') {
      chordUI = FSharpChordUI(
        chordName: 'F# Minor',
        imagePath: 'https://www.pianochord.org/images/g_flat_m.png',
      );
    } else if (chordType == 'F#7') {
      chordUI = FSharpChordUI(
        chordName: 'F#7',
        imagePath: 'https://www.pianochord.org/images/g_flat_7.png',
      );
    } else if (chordType == 'F#m7') {
      chordUI = FSharpChordUI(
        chordName: 'F#m7',
        imagePath: 'https://www.pianochord.org/images/g_flat_m7.png',
      );
    } else if (chordType == 'F#maj7') {
      chordUI = FSharpChordUI(
        chordName: 'F#maj7',
        imagePath: 'https://www.pianochord.org/images/g_flat_maj7.png',
      );
    } else if (chordType == 'F#mM7') {
      chordUI = FSharpChordUI(
        chordName: 'F#mM7',
        imagePath: 'https://www.pianochord.org/images/g_flat_minmaj7.png',
      );
    } else if (chordType == 'F#6') {
      chordUI = FSharpChordUI(
        chordName: 'F#6',
        imagePath: 'https://www.pianochord.org/images/g_flat_6.png',
      );
    } else if (chordType == 'F#m6') {
      chordUI = FSharpChordUI(
        chordName: 'F#m6',
        imagePath: 'https://www.pianochord.org/images/g_flat_m6.png',
      );
    } else if (chordType == 'F#6/9') {
      chordUI = FSharpChordUI(
        chordName: 'F#6/9',
        imagePath: 'https://www.pianochord.org/images/g_flat_6_9.png',
      );
    } else if (chordType == 'F#5') {
      chordUI = FSharpChordUI(
        chordName: 'F#5',
        imagePath: 'https://www.pianochord.org/images/g_flat_5.png',
      );
    } else if (chordType == 'F#9') {
      chordUI = FSharpChordUI(
        chordName: 'F#9',
        imagePath: 'https://www.pianochord.org/images/g_flat_9.png',
      );
    } else if (chordType == 'F#m9') {
      chordUI = FSharpChordUI(
        chordName: 'F#m9',
        imagePath: 'https://www.pianochord.org/images/g_flat_m9.png',
      );
    } else if (chordType == 'F#maj9') {
      chordUI = FSharpChordUI(
        chordName: 'F#maj9',
        imagePath: 'https://www.pianochord.org/images/g_flat_maj9.png',
      );
    } else if (chordType == 'F#11') {
      chordUI = FSharpChordUI(
        chordName: 'F#11',
        imagePath: 'https://www.pianochord.org/images/g_flat_11.png',
      );
    } else if (chordType == 'F#m11') {
      chordUI = FSharpChordUI(
        chordName: 'F#m11',
        imagePath: 'https://www.pianochord.org/images/g_flat_m11.png',
      );
    } else if (chordType == 'F#maj11') {
      chordUI = FSharpChordUI(
        chordName: 'F#maj11',
        imagePath: 'https://www.pianochord.org/images/g_flat_maj11.png',
      );
    } else if (chordType == 'F#13') {
      chordUI = FSharpChordUI(
        chordName: 'F#13',
        imagePath: 'https://www.pianochord.org/images/g_flat_13.png',
      );
    } else if (chordType == 'F#m13') {
      chordUI = FSharpChordUI(
        chordName: 'F#m13',
        imagePath: 'https://www.pianochord.org/images/g_flat_m13.png',
      );
    } else if (chordType == 'F#maj13') {
      chordUI = FSharpChordUI(
        chordName: 'F#maj13',
        imagePath: 'https://www.pianochord.org/images/g_flat_add9.png',
      );
    } else if (chordType == 'F#add') {
      chordUI = FSharpChordUI(
        chordName: 'F#add',
        imagePath: 'https://www.pianochord.org/images/g_flat_7minus5.png',
      );
    } else if (chordType == 'F#7-5') {
      chordUI = FSharpChordUI(
        chordName: 'F#7-5',
        imagePath: 'https://www.pianochord.org/images/g_flat_7plus5.png',
      );
    } else if (chordType == 'F#7+5') {
      chordUI = FSharpChordUI(
        chordName: 'F#7+5',
        imagePath: 'https://www.pianochord.org/images/g_flat_7plus5.png',
      );
    } else if (chordType == 'F#sus') {
      chordUI = FSharpChordUI(
        chordName: 'F#sus',
        imagePath: 'https://www.pianochord.org/images/g_flat_sus4.png',
      );
    } else if (chordType == 'F#dim') {
      chordUI = FSharpChordUI(
        chordName: 'F#dim',
        imagePath: 'https://www.pianochord.org/images/g_flat_dim.png',
      );
    } else if (chordType == 'F#dim7') {
      chordUI = FSharpChordUI(
        chordName: 'F#dim7',
        imagePath: 'https://www.pianochord.org/images/g_flat_dim7.png',
      );
    } else if (chordType == 'F#m7b5') {
      chordUI = FSharpChordUI(
        chordName: 'F#m7b5',
        imagePath: 'https://www.pianochord.org/images/g_flat_m7b5.png',
      );
    } else if (chordType == 'F#aug') {
      chordUI = FSharpChordUI(
        chordName: 'F#aug',
        imagePath: 'https://www.pianochord.org/images/g_flat_aug.png',
      );
    } else if (chordType == 'F#aug7') {
      chordUI = FSharpChordUI(
        chordName: 'F#aug7',
        imagePath: 'https://www.pianochord.org/images/g_flat_aug7.png',
      );
    } 

    return chordUI;
  }
}

class FSharpChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const FSharpChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}


class GbChordList extends StatelessWidget {
  final String chordTitle;

  GbChordList({required this.chordTitle});

  final List<String> chordTypesC = [
    'Gb',
    'Gbm',
    'Gb7',
    'Gbm7',
    'Gbmaj7',
    'GbmM7',
    'Gb6',
    'Gbm6',
    'Gb6/9',
    'Gb5',
    'Gb9',
    'Gbm9',
    'Gbmaj9',
    'Gb11',
    'Gbm11',
    'Gbmaj11',
    'Gb13',
    'Gbm13',
    'Gbmaj13',
    'Gbadd',
    'Gb7-5',
    'Gb7+5',
    'Gbsus',
    'Gbdim',
    'Gbdim7',
    'Gbm7b5',
    'Gbaug',
    'Gbaug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GbChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class GbChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  GbChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'Gb') {
      chordUI = GbChordUI(
        chordName: 'Gb Major',
        imagePath: 'https://www.pianochord.org/images/g_flat.png',
      );
    } else if (chordType == 'Gbm') {
      chordUI = GbChordUI(
        chordName: 'Gb Minor',
        imagePath: 'https://www.pianochord.org/images/g_flat_m.png',
      );
    } else if (chordType == 'Gb7') {
      chordUI = GbChordUI(
        chordName: 'Gb7',
        imagePath: 'https://www.pianochord.org/images/g_flat_7.png',
      );
    } else if (chordType == 'Gbm7') {
      chordUI = GbChordUI(
        chordName: 'Gbm7',
        imagePath: 'https://www.pianochord.org/images/g_flat_m7.png',
      );
    } else if (chordType == 'Gbmaj7') {
      chordUI = GbChordUI(
        chordName: 'Gbmaj7',
        imagePath: 'https://www.pianochord.org/images/g_flat_maj7.png',
      );
    } else if (chordType == 'GbmM7') {
      chordUI = GbChordUI(
        chordName: 'GbmM7',
        imagePath: 'https://www.pianochord.org/images/g_flat_minmaj7.png',
      );
    } else if (chordType == 'Gb6') {
      chordUI = GbChordUI(
        chordName: 'Gb6',
        imagePath: 'https://www.pianochord.org/images/g_flat_6.png',
      );
    } else if (chordType == 'Gbm6') {
      chordUI = GbChordUI(
        chordName: 'Gbm6',
        imagePath: 'https://www.pianochord.org/images/g_flat_m6.png',
      );
    } else if (chordType == 'Gb6/9') {
      chordUI = GbChordUI(
        chordName: 'Gb6/9',
        imagePath: 'https://www.pianochord.org/images/g_flat_6_9.png',
      );
    } else if (chordType == 'Gb5') {
      chordUI = GbChordUI(
        chordName: 'Gb5',
        imagePath: 'https://www.pianochord.org/images/g_flat_5.png',
      );
    } else if (chordType == 'Gb9') {
      chordUI = GbChordUI(
        chordName: 'Gb9',
        imagePath: 'https://www.pianochord.org/images/g_flat_9.png',
      );
    } else if (chordType == 'Gbm9') {
      chordUI = GbChordUI(
        chordName: 'Gbm9',
        imagePath: 'https://www.pianochord.org/images/g_flat_m9.png',
      );
    } else if (chordType == 'Gbmaj9') {
      chordUI = GbChordUI(
        chordName: 'Gbmaj9',
        imagePath: 'https://www.pianochord.org/images/g_flat_maj9.png',
      );
    } else if (chordType == 'Gb11') {
      chordUI = GbChordUI(
        chordName: 'Gb11',
        imagePath: 'https://www.pianochord.org/images/g_flat_11.png',
      );
    } else if (chordType == 'Gbm11') {
      chordUI = GbChordUI(
        chordName: 'Gbm11',
        imagePath: 'https://www.pianochord.org/images/g_flat_m11.png',
      );
    } else if (chordType == 'Gbmaj11') {
      chordUI = GbChordUI(
        chordName: 'Gbmaj11',
        imagePath: 'https://www.pianochord.org/images/g_flat_maj11.png',
      );
    } else if (chordType == 'Gb13') {
      chordUI = GbChordUI(
        chordName: 'Gb13',
        imagePath: 'https://www.pianochord.org/images/g_flat_13.png',
      );
    } else if (chordType == 'Gbm13') {
      chordUI = GbChordUI(
        chordName: 'Gbm13',
        imagePath: 'https://www.pianochord.org/images/g_flat_maj13.png',
      );
    } else if (chordType == 'Gbmaj13') {
      chordUI = GbChordUI(
        chordName: 'Gbmaj13',
        imagePath: 'https://www.pianochord.org/images/g_flat_add9.png',
      );
    } else if (chordType == 'Gbadd') {
      chordUI = GbChordUI(
        chordName: 'Gbadd',
        imagePath: 'https://www.pianochord.org/images/g_flat_7minus5.png',
      );
    } else if (chordType == 'Gb7-5') {
      chordUI = GbChordUI(
        chordName: 'Gb7-5',
        imagePath: 'https://www.pianochord.org/images/g_flat_7minus5.png',
      );
    } else if (chordType == 'Gb7+5') {
      chordUI = GbChordUI(
        chordName: 'Gb7+5',
        imagePath: 'https://www.pianochord.org/images/g_flat_7plus5.png',
      );
    } else if (chordType == 'Gbsus') {
      chordUI = GbChordUI(
        chordName: 'Gbsus',
        imagePath: 'https://www.pianochord.org/images/g_flat_sus4.png',
      );
    } else if (chordType == 'Gbdim') {
      chordUI = GbChordUI(
        chordName: 'Gbdim',
        imagePath: 'https://www.pianochord.org/images/g_flat_dim.png',
      );
    } else if (chordType == 'Gbdim7') {
      chordUI = GbChordUI(
        chordName: 'Gbdim7',
        imagePath: 'https://www.pianochord.org/images/g_flat_dim7.png',
      );
    } else if (chordType == 'Gbm7b5') {
      chordUI = GbChordUI(
        chordName: 'Gbm7b5',
        imagePath: 'https://www.pianochord.org/images/g_flat_m7b5.png',
      );
    } else if (chordType == 'Gbaug') {
      chordUI = GbChordUI(
        chordName: 'Gbaug',
        imagePath: 'https://www.pianochord.org/images/g_flat_aug.png',
      );
    } else if (chordType == 'Gbaug7') {
      chordUI = GbChordUI(
        chordName: 'Gbaug7',
        imagePath: 'https://www.pianochord.org/images/g_flat_aug7.png',
      );
    } 

    return chordUI;
  }
}

class GbChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const GbChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}

class GChordsList extends StatelessWidget {
  final String chordTitle;

  GChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'G',
    'Gm',
    'G7',
    'Gm7',
    'Gmaj7',
    'GmM7',
    'G6',
    'Gm6',
    'G6/9',
    'G5',
    'G9',
    'Gm9',
    'Gmaj9',
    'G11',
    'Gm11',
    'Gmaj11',
    'G13',
    'Gm13',
    'Gmaj13',
    'Gadd',
    'G7-5',
    'G7+5',
    'Gsus',
    'Gdim',
    'Gdim7',
    'Gm7b5',
    'Gaug',
    'Gaug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class GChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  GChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'G') {
      chordUI = GChordUI(
        chordName: 'G Major',
        imagePath: 'https://www.pianochord.org/images/g.png',
      );
    } else if (chordType == 'Gm') {
      chordUI = GChordUI(
        chordName: 'G Minor',
        imagePath: 'https://www.pianochord.org/images/gm.png',
      );
    } else if (chordType == 'G7') {
      chordUI = GChordUI(
        chordName: 'G7',
        imagePath: 'https://www.pianochord.org/images/g7.png',
      );
    } else if (chordType == 'Gm7') {
      chordUI = GChordUI(
        chordName: 'Gm7',
        imagePath: 'https://www.pianochord.org/images/gm7.png',
      );
    } else if (chordType == 'Gmaj7') {
      chordUI = GChordUI(
        chordName: 'Gmaj7',
        imagePath: 'https://www.pianochord.org/images/gmaj7.png',
      );
    } else if (chordType == 'GmM7') {
      chordUI = GChordUI(
        chordName: 'GmM7',
        imagePath: 'https://www.pianochord.org/images/gminmaj7.png',
      );
    } else if (chordType == 'G6') {
      chordUI = GChordUI(
        chordName: 'G6',
        imagePath: 'https://www.pianochord.org/images/g6.png',
      );
    } else if (chordType == 'Gm6') {
      chordUI = GChordUI(
        chordName: 'Gm6',
        imagePath: 'https://www.pianochord.org/images/gm6.png',
      );
    } else if (chordType == 'G6/9') {
      chordUI = GChordUI(
        chordName: 'G6/9',
        imagePath: 'https://www.pianochord.org/images/g6_9.png',
      );
    } else if (chordType == 'G5') {
      chordUI = GChordUI(
        chordName: 'G5',
        imagePath: 'https://www.pianochord.org/images/g5.png',
      );
    } else if (chordType == 'G9') {
      chordUI = GChordUI(
        chordName: 'G9',
        imagePath: 'https://www.pianochord.org/images/g9.png',
      );
    } else if (chordType == 'Gm9') {
      chordUI = GChordUI(
        chordName: 'Gm9',
        imagePath: 'https://www.pianochord.org/images/gm9.png',
      );
    } else if (chordType == 'Gmaj9') {
      chordUI = GChordUI(
        chordName: 'Gmaj9',
        imagePath: 'https://www.pianochord.org/images/gmaj9.png',
      );
    } else if (chordType == 'G11') {
      chordUI = GChordUI(
        chordName: 'G11',
        imagePath: 'https://www.pianochord.org/images/g11.png',
      );
    } else if (chordType == 'Gm11') {
      chordUI = GChordUI(
        chordName: 'Gm11',
        imagePath: 'https://www.pianochord.org/images/gm11.png',
      );
    } else if (chordType == 'Gmaj11') {
      chordUI = GChordUI(
        chordName: 'Gmaj11',
        imagePath: 'https://www.pianochord.org/images/gmaj11.png',
      );
    } else if (chordType == 'G13') {
      chordUI = GChordUI(
        chordName: 'G13',
        imagePath: 'https://www.pianochord.org/images/g13.pnghttps://www.pianochord.org/images/g13.png',
      );
    } else if (chordType == 'Gm13') {
      chordUI = GChordUI(
        chordName: 'Gm13',
        imagePath: 'https://www.pianochord.org/images/gm13.png',
      );
    } else if (chordType == 'Gmaj13') {
      chordUI = GChordUI(
        chordName: 'Gmaj13',
        imagePath: 'https://www.pianochord.org/images/gmaj13.png',
      );
    } else if (chordType == 'Gadd') {
      chordUI = GChordUI(
        chordName: 'Gadd',
        imagePath: 'https://www.pianochord.org/images/gadd9.png',
      );
    } else if (chordType == 'G7-5') {
      chordUI = GChordUI(
        chordName: 'G7-5',
        imagePath: 'https://www.pianochord.org/images/g7minus5.png  ',
      );
    } else if (chordType == 'G7+5') {
      chordUI = GChordUI(
        chordName: 'G7+5',
        imagePath: 'https://www.pianochord.org/images/g7plus5.png',
      );
    } else if (chordType == 'Gsus') {
      chordUI = GChordUI(
        chordName: 'Gsus',
        imagePath: 'https://www.pianochord.org/images/gsus4.png',
      );
    } else if (chordType == 'Gdim') {
      chordUI = GChordUI(
        chordName: 'Gdim',
        imagePath: 'https://www.pianochord.org/images/gdim.png',
      );
    } else if (chordType == 'Gdim7') {
      chordUI = GChordUI(
        chordName: 'Gdim7',
        imagePath: 'https://www.pianochord.org/images/gdim7.png',
      );
    } else if (chordType == 'Gm7b5') {
      chordUI = GChordUI(
        chordName: 'Gm7b5',
        imagePath: 'https://www.pianochord.org/images/gm7b5.png',
      );
    } else if (chordType == 'Gaug') {
      chordUI = GChordUI(
        chordName: 'Gaug',
        imagePath: 'https://www.pianochord.org/images/gaug.png',
      );
    } else if (chordType == 'Gaug7') {
      chordUI = GChordUI(
        chordName: 'Gaug7',
        imagePath: 'https://www.pianochord.org/images/gaug7.png',
      );
    } 

    return chordUI;
  }
}

class GChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const GChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}

class GsharpChordsList extends StatelessWidget {
  final String chordTitle;

  GsharpChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'G#',
    'G#m',
    'G#7',
    'G#m7',
    'G#maj7',
    'G#mM7',
    'G#6',
    'G#m6',
    'G#6/9',
    'G#5',
    'G#9',
    'G#m9',
    'G#maj9',
    'G#11',
    'G#m11',
    'G#maj11',
    'G#13',
    'G#m13',
    'G#maj13',
    'G#add',
    'G#7-5',
    'G#7+5',
    'G#sus',
    'G#dim',
    'G#dim7',
    'G#m7b5',
    'G#aug',
    'G#aug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GsharpChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class GsharpChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  GsharpChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'G#') {
      chordUI = GSharpChordUI(
        chordName: 'G# Major',
        imagePath: 'https://www.pianochord.org/images/a_flat.png',
      );
    } else if (chordType == 'G#m') {
      chordUI = GSharpChordUI(
        chordName: 'G# Minor',
        imagePath: 'https://www.pianochord.org/images/a_flat.png',
      );
    } else if (chordType == 'G#7') {
      chordUI = GSharpChordUI(
        chordName: 'G#7',
        imagePath: 'https://www.pianochord.org/images/a_flat_7.png',
      );
    } else if (chordType == 'G#m7') {
      chordUI = GSharpChordUI(
        chordName: 'G#m7',
        imagePath: 'https://www.pianochord.org/images/a_flat_m7.png',
      );
    } else if (chordType == 'G#maj7') {
      chordUI = GSharpChordUI(
        chordName: 'G#maj7',
        imagePath: 'https://www.pianochord.org/images/a_flat_maj7.png',
      );
    } else if (chordType == 'G#mM7') {
      chordUI = GSharpChordUI(
        chordName: 'G#mM7',
        imagePath: 'https://www.pianochord.org/images/a_flat_minmaj7.png',
      );
    } else if (chordType == 'G#6') {
      chordUI = GSharpChordUI(
        chordName: 'G#6',
        imagePath: 'https://www.pianochord.org/images/a_flat_6.png',
      );
    } else if (chordType == 'G#m6') {
      chordUI = GSharpChordUI(
        chordName: 'G#m6',
        imagePath: 'https://www.pianochord.org/images/a_flat_m6.png',
      );
    } else if (chordType == 'G#6/9') {
      chordUI = GSharpChordUI(
        chordName: 'G#6/9',
        imagePath: 'https://www.pianochord.org/images/a_flat_6_9.png',
      );
    } else if (chordType == 'G#5') {
      chordUI = GSharpChordUI(
        chordName: 'G#5',
        imagePath: 'https://www.pianochord.org/images/a_flat_5.png',
      );
    } else if (chordType == 'G#9') {
      chordUI = GSharpChordUI(
        chordName: 'G#9',
        imagePath: 'https://www.pianochord.org/images/a_flat_9.png',
      );
    } else if (chordType == 'G#m9') {
      chordUI = GSharpChordUI(
        chordName: 'G#m9',
        imagePath: 'https://www.pianochord.org/images/a_flat_m9.png',
      );
    } else if (chordType == 'G#maj9') {
      chordUI = GSharpChordUI(
        chordName: 'G#maj9',
        imagePath: 'https://www.pianochord.org/images/a_flat_maj9.png',
      );
    } else if (chordType == 'G#11') {
      chordUI = GSharpChordUI(
        chordName: 'G#11',
        imagePath: 'https://www.pianochord.org/images/a_flat_11.png',
      );
    } else if (chordType == 'G#m11') {
      chordUI = GSharpChordUI(
        chordName: 'G#m11',
        imagePath: 'https://www.pianochord.org/images/a_flat_m11.png  ',
      );
    } else if (chordType == 'G#maj11') {
      chordUI = GSharpChordUI(
        chordName: 'G#maj11',
        imagePath: 'https://www.pianochord.org/images/a_flat_maj11.png',
      );
    } else if (chordType == 'G#13') {
      chordUI = GSharpChordUI(
        chordName: 'G#13',
        imagePath: 'https://www.pianochord.org/images/a_flat_13.png',
      );
    } else if (chordType == 'G#m13') {
      chordUI = GSharpChordUI(
        chordName: 'G#m13',
        imagePath: 'https://www.pianochord.org/images/a_flat_m13.png',
      );
    } else if (chordType == 'G#maj13') {
      chordUI = GSharpChordUI(
        chordName: 'G#maj13',
        imagePath: 'https://www.pianochord.org/images/a_flat_maj13.png',
      );
    } else if (chordType == 'G#add') {
      chordUI = GSharpChordUI(
        chordName: 'G#add',
        imagePath: 'https://www.pianochord.org/images/a_flat_add2.png',
      );
    } else if (chordType == 'G#7-5') {
      chordUI = GSharpChordUI(
        chordName: 'G#7-5',
        imagePath: 'https://www.pianochord.org/images/a_flat_7minus5.png',
      );
    } else if (chordType == 'G#7+5') {
      chordUI = GSharpChordUI(
        chordName: 'G#7+5',
        imagePath: 'https://www.pianochord.org/images/a_flat_7plus5.png',
      );
    } else if (chordType == 'G#sus') {
      chordUI = GSharpChordUI(
        chordName: 'G#sus',
        imagePath: 'https://www.pianochord.org/images/a_flat_sus4.png',
      );
    } else if (chordType == 'G#dim') {
      chordUI = GSharpChordUI(
        chordName: 'G#dim',
        imagePath: 'https://www.pianochord.org/images/a_flat_dim.png',
      );
    } else if (chordType == 'G#dim7') {
      chordUI = GSharpChordUI(
        chordName: 'G#dim7',
        imagePath: 'https://www.pianochord.org/images/a_flat_dim7.png',
      );
    } else if (chordType == 'G#m7b5') {
      chordUI = GSharpChordUI(
        chordName: 'G#m7b5',
        imagePath: 'https://www.pianochord.org/images/a_flat_m7b5.png',
      );
    } else if (chordType == 'G#aug') {
      chordUI = GSharpChordUI(
        chordName: 'G#aug',
        imagePath: 'https://www.pianochord.org/images/a_flat_aug.png',
      );
    } else if (chordType == 'G#aug7') {
      chordUI = GSharpChordUI(
        chordName: 'G#aug7',
        imagePath: 'https://www.pianochord.org/images/a_flat_aug7.png',
      );
    } 

    return chordUI;
  }
}

class GSharpChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const GSharpChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}

class AbChordsList extends StatelessWidget {
  final String chordTitle;

  AbChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'Ab',
    'Abm',
    'Ab7',
    'Abm7',
    'Abmaj7',
    'AbmM7',
    'Ab6',
    'Abm6',
    'Ab6/9',
    'Ab5',
    'Ab9',
    'Abm9',
    'Abmaj9',
    'Ab11',
    'Abm11',
    'Abmaj11',
    'Ab13',
    'Abm13',
    'Abmaj13',
    'Abadd',
    'Ab7-5',
    'Ab7+5',
    'Absus',
    'Abdim',
    'Abdim7',
    'Abm7b5',
    'Abaug',
    'Abaug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AbChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class AbChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  AbChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'Ab') {
      chordUI = AbChordUI(
        chordName: 'Ab Major',
        imagePath: 'https://www.pianochord.org/images/a_flat.png',
      );
    } else if (chordType == 'Abm') {
      chordUI = AbChordUI(
        chordName: 'Ab Minor',
        imagePath: 'https://www.pianochord.org/images/a_flat_m.png',
      );
    } else if (chordType == 'Ab7') {
      chordUI = AbChordUI(
        chordName: 'Ab7',
        imagePath: 'https://www.pianochord.org/images/a_flat_7.png',
      );
    } else if (chordType == 'Abm7') {
      chordUI = AbChordUI(
        chordName: 'Abm7',
        imagePath: 'https://www.pianochord.org/images/a_flat_7.png',
      );
    } else if (chordType == 'Abmaj7') {
      chordUI = AbChordUI(
        chordName: 'Abmaj7',
        imagePath: 'https://www.pianochord.org/images/a_flat_maj7.png',
      );
    } else if (chordType == 'AbmM7') {
      chordUI = AbChordUI(
        chordName: 'AbmM7',
        imagePath: 'https://www.pianochord.org/images/a_flat_minmaj7.png',
      );
    } else if (chordType == 'Ab6') {
      chordUI = AbChordUI(
        chordName: 'Ab6',
        imagePath: 'https://www.pianochord.org/images/a_flat_6.png',
      );
    } else if (chordType == 'Abm6') {
      chordUI = AbChordUI(
        chordName: 'Abm6',
        imagePath: 'https://www.pianochord.org/images/a_flat_m6.png',
      );
    } else if (chordType == 'Ab6/9') {
      chordUI = AbChordUI(
        chordName: 'Ab6/9',
        imagePath: 'https://www.pianochord.org/images/a_flat_6_9.png',
      );
    } else if (chordType == 'Ab5') {
      chordUI = AbChordUI(
        chordName: 'Ab5',
        imagePath: 'https://www.pianochord.org/images/a_flat_5.png',
      );
    } else if (chordType == 'Ab9') {
      chordUI = AbChordUI(
        chordName: 'Ab9',
        imagePath: 'https://www.pianochord.org/images/a_flat_9.png',
      );
    } else if (chordType == 'Abm9') {
      chordUI = AbChordUI(
        chordName: 'Abm9',
        imagePath: 'https://www.pianochord.org/images/a_flat_m9.png',
      );
    } else if (chordType == 'Abmaj9') {
      chordUI = AbChordUI(
        chordName: 'Abmaj9',
        imagePath: 'https://www.pianochord.org/images/a_flat_maj9.png',
      );
    } else if (chordType == 'Ab11') {
      chordUI = AbChordUI(
        chordName: 'Ab11',
        imagePath: 'https://www.pianochord.org/images/a_flat_11.png',
      );
    } else if (chordType == 'Abm11') {
      chordUI = AbChordUI(
        chordName: 'Abm11',
        imagePath: 'https://www.pianochord.org/images/a_flat_m11.png',
      );
    } else if (chordType == 'Abmaj11') {
      chordUI = AbChordUI(
        chordName: 'Abmaj11',
        imagePath: 'https://www.pianochord.org/images/a_flat_maj11.png',
      );
    } else if (chordType == 'Ab13') {
      chordUI = AbChordUI(
        chordName: 'Ab13',
        imagePath: 'https://www.pianochord.org/images/a_flat_13.png',
      );
    } else if (chordType == 'Abm13') {
      chordUI = AbChordUI(
        chordName: 'Abm13',
        imagePath: 'https://www.pianochord.org/images/a_flat_m13.png',
      );
    } else if (chordType == 'Abmaj13') {
      chordUI = AbChordUI(
        chordName: 'Abmaj13',
        imagePath: 'https://www.pianochord.org/images/a_flat_maj13.png',
      );
    } else if (chordType == 'Abadd') {
      chordUI = AbChordUI(
        chordName: 'Abadd',
        imagePath: 'https://www.pianochord.org/images/a_flat_add9.png',
      );
    } else if (chordType == 'Ab7-5') {
      chordUI = AbChordUI(
        chordName: 'Ab7-5',
        imagePath: 'https://www.pianochord.org/images/a_flat_7minus5.png',
      );
    } else if (chordType == 'Ab7+5') {
      chordUI = AbChordUI(
        chordName: 'Ab7+5',
        imagePath: 'https://www.pianochord.org/images/a_flat_7plus5.png',
      );
    } else if (chordType == 'Absus') {
      chordUI = AbChordUI(
        chordName: 'Absus',
        imagePath: 'https://www.pianochord.org/images/a_flat_sus4.png',
      );
    } else if (chordType == 'Abdim') {
      chordUI = AbChordUI(
        chordName: 'Abdim',
        imagePath: 'https://www.pianochord.org/images/a_flat_dim.png',
      );
    } else if (chordType == 'Abdim7') {
      chordUI = AbChordUI(
        chordName: 'Abdim7',
        imagePath: 'https://www.pianochord.org/images/a_flat_dim7.png',
      );
    } else if (chordType == 'Abm7b5') {
      chordUI = AbChordUI(
        chordName: 'Abm7b5',
        imagePath: 'https://www.pianochord.org/images/a_flat_m7b5.png',
      );
    } else if (chordType == 'Abaug') {
      chordUI = AbChordUI(
        chordName: 'Abaug',
        imagePath: 'https://www.pianochord.org/images/a_flat_aug.png',
      );
    } else if (chordType == 'Abaug7') {
      chordUI = AbChordUI(
        chordName: 'Abaug7',
        imagePath: 'https://www.pianochord.org/images/a_flat_aug7.png',
      );
    } 

    return chordUI;
  }
}

class AbChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const AbChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}

class AChordsList extends StatelessWidget {
  final String chordTitle;

  AChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'A',
    'Am',
    'A7',
    'Am7',
    'Amaj7',
    'AmM7',
    'A6',
    'Am6',
    'A6/9',
    'A5',
    'A9',
    'Am9',
    'Amaj9',
    'A11',
    'Am11',
    'Amaj11',
    'A13',
    'Am13',
    'Amaj13',
    'Aadd',
    'A7-5',
    'A7+5',
    'Asus',
    'Adim',
    'Adim7',
    'Am7b5',
    'Aaug',
    'Aaug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class AChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  AChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'A') {
      chordUI = AChordUI(
        chordName: 'A Major',
        imagePath: 'https://www.pianochord.org/images/a.png',
      );
    } else if (chordType == 'Am') {
      chordUI = AChordUI(
        chordName: 'A Minor',
        imagePath: 'https://www.pianochord.org/images/am.png',
      );
    } else if (chordType == 'A7') {
      chordUI = AChordUI(
        chordName: 'A7',
        imagePath: 'https://www.pianochord.org/images/a7.png',
      );
    } else if (chordType == 'Am7') {
      chordUI = AChordUI(
        chordName: 'Am7',
        imagePath: 'https://www.pianochord.org/images/am7.png',
      );
    } else if (chordType == 'Amaj7') {
      chordUI = AChordUI(
        chordName: 'Amaj7',
        imagePath: 'https://www.pianochord.org/images/amaj7.png',
      );
    } else if (chordType == 'AmM7') {
      chordUI = AChordUI(
        chordName: 'AmM7',
        imagePath: 'https://www.pianochord.org/images/aminmaj7.png',
      );
    } else if (chordType == 'A6') {
      chordUI = AChordUI(
        chordName: 'A6',
        imagePath: 'https://www.pianochord.org/images/a6.png',
      );
    } else if (chordType == 'Am6') {
      chordUI = AChordUI(
        chordName: 'Am6',
        imagePath: 'https://www.pianochord.org/images/am6.png',
      );
    } else if (chordType == 'A6/9') {
      chordUI = AChordUI(
        chordName: 'A6/9',
        imagePath: 'https://www.pianochord.org/images/a6_9.png',
      );
    } else if (chordType == 'A5') {
      chordUI = AChordUI(
        chordName: 'A5',
        imagePath: 'https://www.pianochord.org/images/a5.png',
      );
    } else if (chordType == 'A9') {
      chordUI = AChordUI(
        chordName: 'A9',
        imagePath: 'https://www.pianochord.org/images/a9.png',
      );
    } else if (chordType == 'Am9') {
      chordUI = AChordUI(
        chordName: 'Am9',
        imagePath: 'https://www.pianochord.org/images/am9.png',
      );
    } else if (chordType == 'Amaj9') {
      chordUI = AChordUI(
        chordName: 'Amaj9',
        imagePath: 'https://www.pianochord.org/images/amaj9.png',
      );
    } else if (chordType == 'A11') {
      chordUI = AChordUI(
        chordName: 'A11',
        imagePath: 'https://www.pianochord.org/images/a11.png',
      );
    } else if (chordType == 'Am11') {
      chordUI = AChordUI(
        chordName: 'Am11',
        imagePath: 'https://www.pianochord.org/images/am11.png',
      );
    } else if (chordType == 'Amaj11') {
      chordUI = AChordUI(
        chordName: 'Amaj11',
        imagePath: 'https://www.pianochord.org/images/amaj11.png',
      );
    } else if (chordType == 'A13') {
      chordUI = AChordUI(
        chordName: 'A13',
        imagePath: 'https://www.pianochord.org/images/a13.png',
      );
    } else if (chordType == 'Am13') {
      chordUI = AChordUI(
        chordName: 'Am13',
        imagePath: 'https://www.pianochord.org/images/am13.png',
      );
    } else if (chordType == 'Amaj13') {
      chordUI = AChordUI(
        chordName: 'Amaj13',
        imagePath: 'https://www.pianochord.org/images/amaj13.png',
      );
    } else if (chordType == 'Aadd') {
      chordUI = AChordUI(
        chordName: 'Aadd',
        imagePath: 'https://www.pianochord.org/images/aadd9.png',
      );
    } else if (chordType == 'A7-5') {
      chordUI = AChordUI(
        chordName: 'A7-5',
        imagePath: 'https://www.pianochord.org/images/a7minus5.png',
      );
    } else if (chordType == 'A7+5') {
      chordUI = AChordUI(
        chordName: 'A7+5',
        imagePath: 'https://www.pianochord.org/images/a7plus5.png',
      );
    } else if (chordType == 'Asus') {
      chordUI = AChordUI(
        chordName: 'Asus',
        imagePath: 'https://www.pianochord.org/images/asus4.png',
      );
    } else if (chordType == 'Adim') {
      chordUI = AChordUI(
        chordName: 'Adim',
        imagePath: 'https://www.pianochord.org/images/adim.png',
      );
    } else if (chordType == 'Adim7') {
      chordUI = AChordUI(
        chordName: 'Adim7',
        imagePath: 'https://www.pianochord.org/images/adim7.png',
      );
    } else if (chordType == 'Am7b5') {
      chordUI = AChordUI(
        chordName: 'Am7b5',
        imagePath: 'https://www.pianochord.org/images/am7b5.png',
      );
    } else if (chordType == 'Aaug') {
      chordUI = AChordUI(
        chordName: 'Aaug',
        imagePath: 'https://www.pianochord.org/images/aaug.png',
      );
    } else if (chordType == 'Aaug7') {
      chordUI = AChordUI(
        chordName: 'Aaug7',
        imagePath: 'https://www.pianochord.org/images/aaug7.png',
      );
    } 

    return chordUI;
  }
}

class AChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const AChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}

class AsharpChordsList extends StatelessWidget {
  final String chordTitle;

  AsharpChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'A#',
    'A#m',
    'A#7',
    'A#m7',
    'A#maj7',
    'A#mM7',
    'A#6',
    'A#m6',
    'A#6/9',
    'A#5',
    'A#9',
    'A#m9',
    'A#maj9',
    'A#11',
    'A#m11',
    'A#maj11',
    'A#13',
    'A#m13',
    'A#maj13',
    'A#add',
    'A#7-5',
    'A#7+5',
    'A#sus',
    'A#dim',
    'A#dim7',
    'A#m7b5',
    'A#aug',
    'A#aug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AsharpChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class AsharpChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  AsharpChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'A#') {
      chordUI = ASharpChordUI(
        chordName: 'A# Major',
        imagePath: 'https://www.pianochord.org/images/b_flat.png',
      );
    } else if (chordType == 'A#m') {
      chordUI = ASharpChordUI(
        chordName: 'A# Minor',
        imagePath: 'https://www.pianochord.org/images/b_flat_m.png',
      );
    } else if (chordType == 'A#7') {
      chordUI = ASharpChordUI(
        chordName: 'A#7',
        imagePath: 'https://www.pianochord.org/images/b_flat_7.png',
      );
    } else if (chordType == 'A#m7') {
      chordUI = ASharpChordUI(
        chordName: 'A#m7',
        imagePath: 'https://www.pianochord.org/images/b_flat_m7.png',
      );
    } else if (chordType == 'A#maj7') {
      chordUI = ASharpChordUI(
        chordName: 'A#maj7',
        imagePath: 'https://www.pianochord.org/images/b_flat_maj7.png',
      );
    } else if (chordType == 'A#mM7') {
      chordUI = ASharpChordUI(
        chordName: 'A#mM7',
        imagePath: 'https://www.pianochord.org/images/b_flat_minmaj7.png',
      );
    } else if (chordType == 'A#6') {
      chordUI = ASharpChordUI(
        chordName: 'A#6',
        imagePath: 'https://www.pianochord.org/images/b_flat_6.png',
      );
    } else if (chordType == 'A#m6') {
      chordUI = ASharpChordUI(
        chordName: 'A#m6',
        imagePath: 'https://www.pianochord.org/images/b_flat_m6.png',
      );
    } else if (chordType == 'A#6/9') {
      chordUI = ASharpChordUI(
        chordName: 'A#6/9',
        imagePath: 'https://www.pianochord.org/images/b_flat_6_9.png',
      );
    } else if (chordType == 'A#5') {
      chordUI = ASharpChordUI(
        chordName: 'A#5',
        imagePath: 'https://www.pianochord.org/images/b_flat_5.png',
      );
    } else if (chordType == 'A#9') {
      chordUI = ASharpChordUI(
        chordName: 'A#9',
        imagePath: 'https://www.pianochord.org/images/b_flat_9.png',
      );
    } else if (chordType == 'A#m9') {
      chordUI = ASharpChordUI(
        chordName: 'A#m9',
        imagePath: 'https://www.pianochord.org/images/b_flat_m9.png',
      );
    } else if (chordType == 'A#maj9') {
      chordUI = ASharpChordUI(
        chordName: 'A#maj9',
        imagePath: 'https://www.pianochord.org/images/b_flat_maj9.png',
      );
    } else if (chordType == 'A#11') {
      chordUI = ASharpChordUI(
        chordName: 'A#11',
        imagePath: 'https://www.pianochord.org/images/b_flat_11.png',
      );
    } else if (chordType == 'A#m11') {
      chordUI = ASharpChordUI(
        chordName: 'A#m11',
        imagePath: 'https://www.pianochord.org/images/b_flat_m11.png',
      );
    } else if (chordType == 'A#maj11') {
      chordUI = ASharpChordUI(
        chordName: 'A#maj11',
        imagePath: 'https://www.pianochord.org/images/b_flat_13.png',
      );
    } else if (chordType == 'A#13') {
      chordUI = ASharpChordUI(
        chordName: 'A#13',
        imagePath: 'https://www.pianochord.org/images/b_flat_13.png',
      );
    } else if (chordType == 'A#m13') {
      chordUI = ASharpChordUI(
        chordName: 'A#m13',
        imagePath: 'https://www.pianochord.org/images/b_flat_m13.png',
      );
    } else if (chordType == 'A#maj13') {
      chordUI = ASharpChordUI(
        chordName: 'A#maj13',
        imagePath: 'https://www.pianochord.org/images/b_flat_maj13.png',
      );
    } else if (chordType == 'A#add') {
      chordUI = ASharpChordUI(
        chordName: 'A#add',
        imagePath: 'https://www.pianochord.org/images/b_flat_add2.png',
      );
    } else if (chordType == 'A#7-5') {
      chordUI = ASharpChordUI(
        chordName: 'A#7-5',
        imagePath: 'https://www.pianochord.org/images/b_flat_7minus5.png',
      );
    } else if (chordType == 'A#7+5') {
      chordUI = ASharpChordUI(
        chordName: 'A#7+5',
        imagePath: 'https://www.pianochord.org/images/b_flat_7plus5.png',
      );
    } else if (chordType == 'A#sus') {
      chordUI = ASharpChordUI(
        chordName: 'A#sus',
        imagePath: 'https://www.pianochord.org/images/b_flat_sus4.png',
      );
    } else if (chordType == 'A#dim') {
      chordUI = ASharpChordUI(
        chordName: 'A#dim',
        imagePath: 'https://www.pianochord.org/images/b_flat_dim.png',
      );
    } else if (chordType == 'A#dim7') {
      chordUI = ASharpChordUI(
        chordName: 'A#dim7',
        imagePath: 'https://www.pianochord.org/images/b_flat_dim7.png',
      );
    } else if (chordType == 'A#m7b5') {
      chordUI = ASharpChordUI(
        chordName: 'A#m7b5',
        imagePath: 'https://www.pianochord.org/images/b_flat_m7b5.png',
      );
    } else if (chordType == 'A#aug') {
      chordUI = ASharpChordUI(
        chordName: 'A#aug',
        imagePath: 'https://www.pianochord.org/images/b_flat_aug.png',
      );
    } else if (chordType == 'A#aug7') {
      chordUI = ASharpChordUI(
        chordName: 'A#aug7',
        imagePath: 'https://www.pianochord.org/images/b_flat_aug7.png',
      );
    } 

    return chordUI;
  }
}

class ASharpChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const ASharpChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}

class BbChordsList extends StatelessWidget {
  final String chordTitle;

  BbChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'Bb',
    'Bbm',
    'Bb7',
    'Bbm7',
    'Bbmaj7',
    'BbmM7',
    'Bb6',
    'Bbm6',
    'Bb6/9',
    'Bb5',
    'Bb9',
    'Bbm9',
    'Bbmaj9',
    'Bb11',
    'Bbm11',
    'Bbmaj11',
    'Bb13',
    'Bbm13',
    'Bbmaj13',
    'Bbadd',
    'Bb7-5',
    'Bb7+5',
    'Bbsus',
    'Bbdim',
    'Bbdim7',
    'Bbm7b5',
    'Bbaug',
    'Bbaug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BbChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class BbChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  BbChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'Bb') {
      chordUI = BbChordUI(
        chordName: 'Bb Major',
        imagePath: 'https://www.pianochord.org/images/b_flat.png',
      );
    } else if (chordType == 'Bbm') {
      chordUI = BbChordUI(
        chordName: 'Bb Minor',
        imagePath: 'https://www.pianochord.org/images/b_flat_m.png',
      );
    } else if (chordType == 'Bb7') {
      chordUI = BbChordUI(
        chordName: 'Bb7',
        imagePath: 'https://www.pianochord.org/images/b_flat_7.png',
      );
    } else if (chordType == 'Bbm7') {
      chordUI = BbChordUI(
        chordName: 'Bbm7',
        imagePath: 'https://www.pianochord.org/images/b_flat_m7.png',
      );
    } else if (chordType == 'Bbmaj7') {
      chordUI = BbChordUI(
        chordName: 'Bbmaj7',
        imagePath: 'https://www.pianochord.org/images/b_flat_maj7.png',
      );
    } else if (chordType == 'BbmM7') {
      chordUI = BbChordUI(
        chordName: 'BbmM7',
        imagePath: 'https://www.pianochord.org/images/b_flat_minmaj7.png  ',
      );
    } else if (chordType == 'Bb6') {
      chordUI = BbChordUI(
        chordName: 'Bb6',
        imagePath: 'https://www.pianochord.org/images/b_flat_6.png',
      );
    } else if (chordType == 'Bbm6') {
      chordUI = BbChordUI(
        chordName: 'Bbm6',
        imagePath: 'https://www.pianochord.org/images/b_flat_m6.png',
      );
    } else if (chordType == 'Bb6/9') {
      chordUI = BbChordUI(
        chordName: 'Bb6/9',
        imagePath: 'https://www.pianochord.org/images/b_flat_6_9.png',
      );
    } else if (chordType == 'Bb5') {
      chordUI = BbChordUI(
        chordName: 'Bb5',
        imagePath: 'https://www.pianochord.org/images/b_flat_5.png',
      );
    } else if (chordType == 'Bb9') {
      chordUI = BbChordUI(
        chordName: 'Bb9',
        imagePath: 'https://www.pianochord.org/images/b_flat_9.png',
      );
    } else if (chordType == 'Bbm9') {
      chordUI = BbChordUI(
        chordName: 'Bbm9',
        imagePath: 'https://www.pianochord.org/images/b_flat_m9.png',
      );
    } else if (chordType == 'Bbmaj9') {
      chordUI = BbChordUI(
        chordName: 'Bbmaj9',
        imagePath: 'https://www.pianochord.org/images/b_flat_maj9.png',
      );
    } else if (chordType == 'Bb11') {
      chordUI = BbChordUI(
        chordName: 'Bb11',
        imagePath: 'https://www.pianochord.org/images/b_flat_11.png',
      );
    } else if (chordType == 'Bbm11') {
      chordUI = BbChordUI(
        chordName: 'Bbm11',
        imagePath: 'https://www.pianochord.org/images/b_flat_m11.png',
      );
    } else if (chordType == 'Bbmaj11') {
      chordUI = BbChordUI(
        chordName: 'Bbmaj11',
        imagePath: 'https://www.pianochord.org/images/b_flat_maj11.png',
      );
    } else if (chordType == 'Bb13') {
      chordUI = BbChordUI(
        chordName: 'Bb13',
        imagePath: 'https://www.pianochord.org/images/b_flat_13.png',
      );
    } else if (chordType == 'Bbm13') {
      chordUI = BbChordUI(
        chordName: 'Bbm13',
        imagePath: 'https://www.pianochord.org/images/b_flat_m13.png',
      );
    } else if (chordType == 'Bbmaj13') {
      chordUI = BbChordUI(
        chordName: 'Bbmaj13',
        imagePath: 'https://www.pianochord.org/images/b_flat_maj13.png',
      );
    } else if (chordType == 'Bbadd') {
      chordUI = BbChordUI(
        chordName: 'Bbadd',
        imagePath: 'https://www.pianochord.org/images/b_flat_add2.png',
      );
    } else if (chordType == 'Bb7-5') {
      chordUI = BbChordUI(
        chordName: 'Bb7-5',
        imagePath: 'https://www.pianochord.org/images/b_flat_7minus5.png',
      );
    } else if (chordType == 'Bb7+5') {
      chordUI = BbChordUI(
        chordName: 'Bb7+5',
        imagePath: 'https://www.pianochord.org/images/b_flat_7plus5.png',
      );
    } else if (chordType == 'Bbsus') {
      chordUI = BbChordUI(
        chordName: 'Bbsus',
        imagePath: 'https://www.pianochord.org/images/b_flat_sus4.png',
      );
    } else if (chordType == 'Bbdim') {
      chordUI = BbChordUI(
        chordName: 'Bbdim',
        imagePath: 'https://www.pianochord.org/images/b_flat_dim.png',
      );
    } else if (chordType == 'Bbdim7') {
      chordUI = BbChordUI(
        chordName: 'Bbdim7',
        imagePath: 'https://www.pianochord.org/images/b_flat_dim7.png',
      );
    } else if (chordType == 'Bbm7b5') {
      chordUI = BbChordUI(
        chordName: 'Bbm7b5',
        imagePath: 'https://www.pianochord.org/images/b_flat_m7b5.png',
      );
    } else if (chordType == 'Bbaug') {
      chordUI = BbChordUI(
        chordName: 'Bbaug',
        imagePath: 'https://www.pianochord.org/images/b_flat_aug.png',
      );
    } else if (chordType == 'Bbaug7') {
      chordUI = BbChordUI(
        chordName: 'Bbaug7',
        imagePath: 'https://www.pianochord.org/images/b_flat_aug7.png',
      );
    } 

    return chordUI;
  }
}

class BbChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const BbChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.network(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}

class BChordsList extends StatelessWidget {
  final String chordTitle;

  BChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'B',
    'Bm',
    'B7',
    'Bm7',
    'Bmaj7',
    'BmM7',
    'B6',
    'Bm6',
    'B6/9',
    'B5',
    'B9',
    'Bm9',
    'Bmaj9',
    'B11',
    'Bm11',
    'Bmaj11',
    'B13',
    'Bm13',
    'Bmaj13',
    'Badd',
    'B7-5',
    'B7+5',
    'Bsus',
    'Bdim',
    'Bdim7',
    'Bm7b5',
    'Baug',
    'Baug7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text(chordTitle),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Container(
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
              title: Text(chordTypesC[index], style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BChordTypeDetailsScreen(
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
      ),   
    );
  }
}

class BChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  BChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); // Initialize chordUI with a default value

    if (chordType == 'B') {
      chordUI = BChordUI(
        chordName: 'B Major',
        imagePath: 'https://www.pianochord.org/images/b.png',
      );
    } else if (chordType == 'Bm') {
      chordUI = BChordUI(
        chordName: 'B Minor',
        imagePath: 'https://www.pianochord.org/images/bm.png',
      );
    } else if (chordType == 'B7') {
      chordUI = BChordUI(
        chordName: 'B7',
        imagePath: 'https://www.pianochord.org/images/b7.png',
      );
    } else if (chordType == 'Bm7') {
      chordUI = BChordUI(
        chordName: 'Bm7',
        imagePath: 'https://www.pianochord.org/images/bmaj7.png',
      );
    } else if (chordType == 'Bmaj7') {
      chordUI = BChordUI(
        chordName: 'Bmaj7',
        imagePath: 'https://www.pianochord.org/images/bminmaj7.png',
      );
    } else if (chordType == 'BmM7') {
      chordUI = BChordUI(
        chordName: 'BmM7',
        imagePath: 'https://www.pianochord.org/images/b6.png',
      );
    } else if (chordType == 'B6') {
      chordUI = BChordUI(
        chordName: 'B6',
        imagePath: 'https://www.pianochord.org/images/b6.png',
      );
    } else if (chordType == 'Bm6') {
      chordUI = BChordUI(
        chordName: 'Bm6',
        imagePath: 'https://www.pianochord.org/images/bm6.png',
      );
    } else if (chordType == 'B6/9') {
      chordUI = BChordUI(
        chordName: 'B6/9',
        imagePath: 'https://www.pianochord.org/images/b6_9.png',
      );
    } else if (chordType == 'B5') {
      chordUI = BChordUI(
        chordName: 'B5',
        imagePath: 'https://www.pianochord.org/images/b5.png',
      );
    } else if (chordType == 'B9') {
      chordUI = BChordUI(
        chordName: 'B9',
        imagePath: 'https://www.pianochord.org/images/b9.png',
      );
    } else if (chordType == 'Bm9') {
      chordUI = BChordUI(
        chordName: 'Bm9',
        imagePath: 'https://www.pianochord.org/images/bm9.png',
      );
    } else if (chordType == 'Bmaj9') {
      chordUI = BChordUI(
        chordName: 'Bmaj9',
        imagePath: 'https://www.pianochord.org/images/bmaj9.png',
      );
    } else if (chordType == 'B11') {
      chordUI = BChordUI(
        chordName: 'B11',
        imagePath: 'https://www.pianochord.org/images/b11.png',
      );
    } else if (chordType == 'Bm11') {
      chordUI = BChordUI(
        chordName: 'Bm11',
        imagePath: 'https://www.pianochord.org/images/bm11.png  ',
      );
    } else if (chordType == 'Bmaj11') {
      chordUI = BChordUI(
        chordName: 'Bmaj11',
        imagePath: 'https://www.pianochord.org/images/bmaj11.png',
      );
    } else if (chordType == 'B13') {
      chordUI = BChordUI(
        chordName: 'B13',
        imagePath: 'https://www.pianochord.org/images/b13.png',
      );
    } else if (chordType == 'Bm13') {
      chordUI = BChordUI(
        chordName: 'Bm13',
        imagePath: 'https://www.pianochord.org/images/bm13.png',
      );
    } else if (chordType == 'Bmaj13') {
      chordUI = BChordUI(
        chordName: 'Bmaj13',
        imagePath: 'https://www.pianochord.org/images/badd9.png',
      );
    } else if (chordType == 'Badd') {
      chordUI = BChordUI(
        chordName: 'Badd',
        imagePath: 'https://www.pianochord.org/images/badd9.png',
      );
    } else if (chordType == 'B7-5') {
      chordUI = BChordUI(
        chordName: 'B7-5',
        imagePath: 'https://www.pianochord.org/images/b7minus5.png',
      );
    } else if (chordType == 'B7+5') {
      chordUI = BChordUI(
        chordName: 'B7+5',
        imagePath: 'https://www.pianochord.org/images/b7plus5.png',
      );
    } else if (chordType == 'Bsus') {
      chordUI = BChordUI(
        chordName: 'Bsus',
        imagePath: 'https://www.pianochord.org/images/bsus4.png',
      );
    } else if (chordType == 'Bdim') {
      chordUI = BChordUI(
        chordName: 'Bdim',
        imagePath: 'https://www.pianochord.org/images/bdim.png',
      );
    } else if (chordType == 'Bdim7') {
      chordUI = BChordUI(
        chordName: 'Bdim7',
        imagePath: 'https://www.pianochord.org/images/bdim7.png',
      );
    } else if (chordType == 'Bm7b5') {
      chordUI = BChordUI(
        chordName: 'Bm7b5',
        imagePath: 'https://www.pianochord.org/images/bm7b5.png',
      );
    } else if (chordType == 'Baug') {
      chordUI = BChordUI(
        chordName: 'Baug',
        imagePath: 'https://www.pianochord.org/images/baug.png',
      );
    } else if (chordType == 'Baug7') {
      chordUI = BChordUI(
        chordName: 'Baug7',
        imagePath: 'https://www.pianochord.org/images/baug7.png',
      );
    }

    return chordUI;
  }
}

class BChordUI extends StatelessWidget {
  final String chordName;
  final String imagePath;

  const BChordUI({
    required this.chordName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(chordName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              chordName,
              style: TextStyle(fontSize: 24.0),
            ),
           Gap(20),
            Image.asset(
            imagePath,
           width: 200,
            height: 200,
          ),
          ],
        ),
      ),
    );
  }
}