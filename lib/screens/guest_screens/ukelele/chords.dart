import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';


class Ukelelehords extends StatefulWidget {
  const Ukelelehords({super.key});

  @override
  State<Ukelelehords> createState() => _UkelelehordsState();
}

class _UkelelehordsState extends State<Ukelelehords> {
  int _selectedIndex = 0;

  final List<String> chordTitles = [
    'C Chords',
    'Db Chords',
    'D Chords',
    'Eb Chords',
    'E Chords',
    'F Chords',
    'Gb Chords',
    'G Chords',
    'Ab Chords',
    'A Chords',
    'Bb Chords',
    'B Chords',

  ];

  void _onChordSelected(BuildContext context, String chordTitle) {
    if (chordTitle == 'C Chords') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CChordsList(chordTitle: chordTitle),
        ),
      );
  }
    else if (chordTitle == 'Db Chords') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DbChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'D Chords') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'Eb Chords') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EbChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'E Chords') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EChordsList(chordTitle: chordTitle),
        ),
      );
    } else if (chordTitle == 'F Chords') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FChordsList(chordTitle: chordTitle),
        ),
      );
    }  
    else if (chordTitle == 'Gb Chords') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GbChordList(chordTitle: chordTitle),
        ),
      );
    }   
    else if (chordTitle == 'G Chords') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GChordsList(chordTitle: chordTitle),
        ),
      );
    }  
    else if (chordTitle == 'Ab Chords') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AbChordsList(chordTitle: chordTitle),
        ),
      );
    }   
    else if (chordTitle == 'Bb Chords') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BbChordsList(chordTitle: chordTitle),
        ),
      );
    }   
    else if (chordTitle == 'B Chords') {
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
          backgroundColor: Color.fromRGBO(32, 40, 55, 1),
          automaticallyImplyLeading: false,
          title: Text(
            'Chords of Ukelele',
            style: GoogleFonts.alice(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: Colors.white,
            ),
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
                      child: ListView.builder(
                        itemCount: chordTitles.length,
                        itemBuilder: (BuildContext context, int index) {
                          final chordTitle = chordTitles[index];
                          return ListTile(
                            title: Text(
                              chordTitle,
                              style: TextStyle(
                                color: Colors.white,
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
     'C7',
     'Cm',
     'Cdim',
     'Caug',
     'C6',
     'Camj7',
     'C9',
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
                    builder: (context) => CChordTypeDetailsScreen(
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
class CChordTypeDetailsScreen extends StatelessWidget {
  final String chordTitle;
  final String chordType;

  CChordTypeDetailsScreen({required this.chordTitle, required this.chordType});

  @override
  Widget build(BuildContext context) {
    Widget chordUI = Container(); 

    if (chordType == 'C') {
      chordUI = ChordUI(
        chordName: 'C Major',
        imagePath: 'assets/images/piano/c/c.png',
      );
    } else if (chordType == 'C7') {
      chordUI = ChordUI(
        chordName: 'C &',
        imagePath: 'assets/images/piano/c/cm.png',
      );
    } else if (chordType == 'Cm') {
      chordUI = ChordUI(
        chordName: 'C minor',
        imagePath: 'assets/images/piano/c/c7.png',
      );
    } else if (chordType == 'Cm7') {
      chordUI = ChordUI(
        chordName: 'Cm7',
        imagePath: 'assets/images/piano/c/cm7.png',
      );
    } else if (chordType == 'Cdim') {
      chordUI = ChordUI(
        chordName: 'Cdim',
        imagePath: 'assets/images/piano/c/cmaj7.png',
      );
    } else if (chordType == 'Caug') {
      chordUI = ChordUI(
        chordName: 'Caug',
        imagePath: 'assets/images/piano/c/cminmaj7.png',
      );
    } else if (chordType == 'C6') {
      chordUI = ChordUI(
        chordName: 'C6',
        imagePath: 'assets/images/piano/c/c6.png',
      );
    } else if (chordType == 'Cmaj7') {
      chordUI = ChordUI(
        chordName: 'Cmaj7',
        imagePath: 'assets/images/piano/c/cm6.png',
      );
    } else if (chordType == 'C9') {
      chordUI = ChordUI(
        chordName: 'C9',
        imagePath: 'assets/images/piano/c/c6_9.png',
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


class DbChordsList extends StatelessWidget {
  final String chordTitle;

  DbChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'Db',
    'Db7',
    'Dbm',
    'Dbm7',
    'Dbdim',
    'Dbaug',
    'Db6',
    'Dbmaj7',
    'Db9',
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
        chordName: 'Db',
        imagePath: 'https://www.pianochord.org/images/d_flat.png',
      );
    } else if (chordType == 'Db7') {
      chordUI = DbChordUI(
        chordName: 'Db7',
        imagePath: 'https://www.pianochord.org/images/d_flat_m.png',
      );
    } else if (chordType == 'Dbm') {
      chordUI = DbChordUI(
        chordName: 'Dbm',
        imagePath: 'https://www.pianochord.org/images/d_flat_7.png',
      );
    } else if (chordType == 'Dbm7') {
      chordUI = DbChordUI(
        chordName: 'Dbm7',
        imagePath: 'https://www.pianochord.org/images/d_flat_m7.png',
      );
    } else if (chordType == 'Dbdim') {
      chordUI = DbChordUI(
        chordName: 'Dbdim',
        imagePath: 'https://www.pianochord.org/images/d_flat_maj7.png',
      );
    } else if (chordType == 'Dbaug') {
      chordUI = DbChordUI(
        chordName: 'Dbaug',
        imagePath: 'https://www.pianochord.org/images/d_flat_minmaj7.png',
      );
    } else if (chordType == 'Db6') {
      chordUI = DbChordUI(
        chordName: 'Db6',
        imagePath: 'https://www.pianochord.org/images/d_flat_6.png',
      );
    } else if (chordType == 'Dmaj7') {
      chordUI = DbChordUI(
        chordName: 'Dmaj7',
        imagePath: 'https://www.pianochord.org/images/d_flat_m6.png',
      );
    } else if (chordType == 'Db9') {
      chordUI = DbChordUI(
        chordName: 'Db9',
        imagePath: 'https://www.pianochord.org/images/d_flat_6_9.png',
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
    'D7',
    'Dm',
    'Dm7',
    'Dbim',
    'Daug',
    'D6',
    'Dmaj7',
    'D9',
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
        chordName: 'D',
        imagePath: 'https://www.pianochord.org/images/d_flat.png',
      );
    } else if (chordType == 'D7') {
      chordUI = DChordUI(
        chordName: 'D7',
        imagePath: 'https://www.pianochord.org/images/d_flat_m.png',
      );
    } else if (chordType == 'Dm') {
      chordUI = DChordUI(
        chordName: 'Dm',
        imagePath: 'https://www.pianochord.org/images/d_flat_7.png',
      );
    } else if (chordType == 'Dm7') {
      chordUI = DChordUI(
        chordName: 'Dm7',
        imagePath: 'https://www.pianochord.org/images/d_flat_m7.png',
      );
    } else if (chordType == 'Ddim') {
      chordUI = DChordUI(
        chordName: 'Ddim',
        imagePath: 'https://www.pianochord.org/images/d_flat_maj7.png',
      );
    } else if (chordType == 'Daug') {
      chordUI = DChordUI(
        chordName: 'Daug',
        imagePath: 'https://www.pianochord.org/images/d_flat_minmaj7.png',
      );
    } else if (chordType == 'D6') {
      chordUI = DChordUI(
        chordName: 'D6',
        imagePath: 'https://www.pianochord.org/images/d_flat_6.png',
      );
    } else if (chordType == 'Dmaj7') {
      chordUI = DChordUI(
        chordName: 'Dmaj7',
        imagePath: 'https://www.pianochord.org/images/d_flat_m6.png',
      );
    } else if (chordType == 'D9') {
      chordUI = DChordUI(
        chordName: 'D9',
        imagePath: 'https://www.pianochord.org/images/d_flat_6_9.png',
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

class EbChordsList extends StatelessWidget {
  final String chordTitle;

  EbChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'Eb',
    'Eb7',
    'Ebm',
    'Ebdim',
    'Ebaug',
    'Eb6',
    'Ebmaj7',
    'Eb9',
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
    } else if (chordType == 'Eb7') {
      chordUI = EbChordUI(
        chordName: 'Eb7',
        imagePath: 'https://www.pianochord.org/images/e_flat_m.png',
      );
    }  else if (chordType == 'Ebm7') {
      chordUI = EbChordUI(
        chordName: 'Ebm7',
        imagePath: 'https://www.pianochord.org/images/e_flat_m7.png',
      );
    } else if (chordType == 'Ebdim') {
      chordUI = EbChordUI(
        chordName: 'Ebdim',
        imagePath: 'https://www.pianochord.org/images/e_flat_maj7.png',
      );
    } else if (chordType == 'Ebaug') {
      chordUI = EbChordUI(
        chordName: 'Ebaug',
        imagePath: 'https://www.pianochord.org/images/e_flat_minmaj7.png',
      );
    } else if (chordType == 'Eb6') {
      chordUI = EbChordUI(
        chordName: 'Eb6',
        imagePath: 'https://www.pianochord.org/images/e_flat_6.png',
      );
    } else if (chordType == 'Ebmaj7') {
      chordUI = EbChordUI(
        chordName: 'Ebmaj7',
        imagePath: 'https://www.pianochord.org/images/e_flat_m6.png',
      );
    } else if (chordType == 'Eb9') {
      chordUI = EbChordUI(
        chordName: 'Eb9',
        imagePath: 'https://www.pianochord.org/images/e_flat_6_9.png',
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
    'E7',
    'Em',
    'Em7',
    'Edim',
    'Eaug',
    'E6',
    'Emaj7',
    'E9',
  
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
    } else if (chordType == 'E7') {
      chordUI = EChordUI(
        chordName: 'E7',
        imagePath: 'https://www.pianochord.org/images/em.png',
      );
    } else if (chordType == 'Em') {
      chordUI = EChordUI(
        chordName: 'Em',
        imagePath: 'https://www.pianochord.org/images/e7.png',
      );
    } else if (chordType == 'Em7') {
      chordUI = EChordUI(
        chordName: 'Em7',
        imagePath: 'https://www.pianochord.org/images/em7.png',
      );
    } else if (chordType == 'Edim') {
      chordUI = EChordUI(
        chordName: 'Edim',
        imagePath: 'https://www.pianochord.org/images/emaj7.png',
      );
    } else if (chordType == 'Eaug') {
      chordUI = EChordUI(
        chordName: 'Eaug',
        imagePath: 'https://www.pianochord.org/images/eminmaj7.png',
      );
    } else if (chordType == 'E6') {
      chordUI = EChordUI(
        chordName: 'E6',
        imagePath: 'https://www.pianochord.org/images/e6.png',
      );
    } else if (chordType == 'Emaj7') {
      chordUI = EChordUI(
        chordName: 'Emaj7',
        imagePath: 'https://www.pianochord.org/images/em6.png',
      );
    } else if (chordType == 'E9') {
      chordUI = EChordUI(
        chordName: 'E9',
        imagePath: 'https://www.pianochord.org/images/e6_9.png',
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
    'F7',
    'Fm',
    'Fm7',
    'Fdim',
    'Faug',
    'F6',
    'Fmaj7',
    'F9',
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
    } else if (chordType == 'F7') {
      chordUI = FChordUI(
        chordName: 'F7',
        imagePath: 'https://www.pianochord.org/images/fm.png',
      );
    } else if (chordType == 'Fm') {
      chordUI = FChordUI(
        chordName: 'Fm',
        imagePath: 'https://www.pianochord.org/images/f7.png',
      );
    } else if (chordType == 'Fm7') {
      chordUI = FChordUI(
        chordName: 'Fm7',
        imagePath: 'https://www.pianochord.org/images/fm7.png',
      );
    } else if (chordType == 'Fdim') {
      chordUI = FChordUI(
        chordName: 'Fdim',
        imagePath: 'https://www.pianochord.org/images/fminmaj7.png',
      );
    } else if (chordType == 'Faug') {
      chordUI = FChordUI(
        chordName: 'Faug',
        imagePath: 'https://www.pianochord.org/images/fminmaj7.png',
      );
    } else if (chordType == 'F6') {
      chordUI = FChordUI(
        chordName: 'F6',
        imagePath: 'https://www.pianochord.org/images/f6.png',
      );
    } else if (chordType == 'Fmaj7') {
      chordUI = FChordUI(
        chordName: 'Fmaj7',
        imagePath: 'https://www.pianochord.org/images/fm6.png',
      );
    }  else if (chordType == 'F9') {
      chordUI = FChordUI(
        chordName: 'F9',
        imagePath: 'https://www.pianochord.org/images/f9.png',
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

class GbChordList extends StatelessWidget {
  final String chordTitle;

  GbChordList({required this.chordTitle});

  final List<String> chordTypesC = [
    'Gb',
    'Gb7',
    'Gbm'
    'Gbm7',
    'Gbdim',
    'Gbaug',
    'Gb6',
    'Gbmaj7',
    'Gb9',
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
    } else if (chordType == 'Gb7') {
      chordUI = GbChordUI(
        chordName: 'Gb7r',
        imagePath: 'https://www.pianochord.org/images/g_flat_m.png',
      );
    } else if (chordType == 'Gbm') {
      chordUI = GbChordUI(
        chordName: 'Gbm',
        imagePath: 'https://www.pianochord.org/images/g_flat_7.png',
      );
    } else if (chordType == 'Gbm7') {
      chordUI = GbChordUI(
        chordName: 'Gbm7',
        imagePath: 'https://www.pianochord.org/images/g_flat_m7.png',
      );
    } else if (chordType == 'Gbdim') {
      chordUI = GbChordUI(
        chordName: 'Gbdim',
        imagePath: 'https://www.pianochord.org/images/g_flat_maj7.png',
      );
    } else if (chordType == 'Gbaug') {
      chordUI = GbChordUI(
        chordName: 'Gbaug',
        imagePath: 'https://www.pianochord.org/images/g_flat_minmaj7.png',
      );
    } else if (chordType == 'Gb6') {
      chordUI = GbChordUI(
        chordName: 'Gb6',
        imagePath: 'https://www.pianochord.org/images/g_flat_6.png',
      );
    } else if (chordType == 'Gbmaj7') {
      chordUI = GbChordUI(
        chordName: 'Gbmaj7',
        imagePath: 'https://www.pianochord.org/images/g_flat_m6.png',
      );
    }  else if (chordType == 'Gb9') {
      chordUI = GbChordUI(
        chordName: 'Gb9',
        imagePath: 'https://www.pianochord.org/images/g_flat_9.png',
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
    'G7',
    'Gm',
    'Gm7',
    'Gdim',
    'Gaug',
    'G6',
    'Gmaj7',
    'G9',
    
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
    } else if (chordType == 'G7') {
      chordUI = GChordUI(
        chordName: 'G7',
        imagePath: 'https://www.pianochord.org/images/gm.png',
      );
    } else if (chordType == 'Gm') {
      chordUI = GChordUI(
        chordName: 'Gm',
        imagePath: 'https://www.pianochord.org/images/g7.png',
      );
    } else if (chordType == 'Gm7') {
      chordUI = GChordUI(
        chordName: 'Gm7',
        imagePath: 'https://www.pianochord.org/images/gm7.png',
      );
    } else if (chordType == 'Gdim') {
      chordUI = GChordUI(
        chordName: 'Gdim',
        imagePath: 'https://www.pianochord.org/images/gmaj7.png',
      );
    } else if (chordType == 'Gaug') {
      chordUI = GChordUI(
        chordName: 'Gaug',
        imagePath: 'https://www.pianochord.org/images/gminmaj7.png',
      );
    } else if (chordType == 'G6') {
      chordUI = GChordUI(
        chordName: 'G6',
        imagePath: 'https://www.pianochord.org/images/g6.png',
      );
    } else if (chordType == 'Gmaj7') {
      chordUI = GChordUI(
        chordName: 'Gmaj7',
        imagePath: 'https://www.pianochord.org/images/gm6.png',
      );
    } else if (chordType == 'G9') {
      chordUI = GChordUI(
        chordName: 'G9',
        imagePath: 'https://www.pianochord.org/images/g9.png',
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

class AbChordsList extends StatelessWidget {
  final String chordTitle;

  AbChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'Ab',
    'Ab7',
    'Abm',
    'Abm7',
    'Abdim',
    'Abaug',
    'Ab6',
    'Abmaj7',
    'Ab9',
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
        chordName: 'Ab7',
        imagePath: 'https://www.pianochord.org/images/a_flat_m.png',
      );
    } else if (chordType == 'Abm') {
      chordUI = AbChordUI(
        chordName: 'Abm',
        imagePath: 'https://www.pianochord.org/images/a_flat_7.png',
      );
    } else if (chordType == 'Abm7') {
      chordUI = AbChordUI(
        chordName: 'Abm7',
        imagePath: 'https://www.pianochord.org/images/a_flat_7.png',
      );
    } else if (chordType == 'Abdim') {
      chordUI = AbChordUI(
        chordName: 'Abdim',
        imagePath: 'https://www.pianochord.org/images/a_flat_maj7.png',
      );
    } else if (chordType == 'Abaug') {
      chordUI = AbChordUI(
        chordName: 'Abaug',
        imagePath: 'https://www.pianochord.org/images/a_flat_minmaj7.png',
      );
    } else if (chordType == 'Ab6') {
      chordUI = AbChordUI(
        chordName: 'Ab6',
        imagePath: 'https://www.pianochord.org/images/a_flat_6.png',
      );
    } else if (chordType == 'Abmaj7') {
      chordUI = AbChordUI(
        chordName: 'Abmaj7',
        imagePath: 'https://www.pianochord.org/images/a_flat_m6.png',
      );
    } else if (chordType == 'Ab9') {
      chordUI = AbChordUI(
        chordName: 'Ab9',
        imagePath: 'https://www.pianochord.org/images/a_flat_9.png',
      );
    } return chordUI;
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
    'A7',
    'Am',
    'Am7',
    'Adim',
    'Abaug',
    'A6',
    'Amaj7',
    'A9',
    
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
    } else if (chordType == 'A7') {
      chordUI = AChordUI(
        chordName: 'A7',
        imagePath: 'https://www.pianochord.org/images/am.png',
      );
    } else if (chordType == 'Am') {
      chordUI = AChordUI(
        chordName: 'Am',
        imagePath: 'https://www.pianochord.org/images/a7.png',
      );
    } else if (chordType == 'Am7') {
      chordUI = AChordUI(
        chordName: 'Am7',
        imagePath: 'https://www.pianochord.org/images/am7.png',
      );
    } else if (chordType == 'Abm7') {
      chordUI = AChordUI(
        chordName: 'Abm7',
        imagePath: 'https://www.pianochord.org/images/amaj7.png',
      );
    } else if (chordType == 'Abdim') {
      chordUI = AChordUI(
        chordName: 'Abdim',
        imagePath: 'https://www.pianochord.org/images/aminmaj7.png',
      );
    } else if (chordType == 'Abaug') {
      chordUI = AChordUI(
        chordName: 'Abdim',
        imagePath: 'https://www.pianochord.org/images/aminmaj7.png',
      );
    } else if (chordType == 'A6') {
      chordUI = AChordUI(
        chordName: 'A6',
        imagePath: 'https://www.pianochord.org/images/a6.png',
      );
    } else if (chordType == 'Amaj7') {
      chordUI = AChordUI(
        chordName: 'Amaj7',
        imagePath: 'https://www.pianochord.org/images/am6.png',
      );
    } else if (chordType == 'A9') {
      chordUI = AChordUI(
        chordName: 'A9',
        imagePath: 'https://www.pianochord.org/images/a9.png',
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

class BbChordsList extends StatelessWidget {
  final String chordTitle;

  BbChordsList({required this.chordTitle});

  final List<String> chordTypesC = [
    'Bb',
    'Bb7',
    'Bbm',
    'Bbm7',
    'Bbdim',
    'Bbaug',
    'Bb6',
    'Bbmaj7',
    'Bb9',
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
    } else if (chordType == 'Bb7') {
      chordUI = BbChordUI(
        chordName: 'Bb7',
        imagePath: 'https://www.pianochord.org/images/b_flat_m.png',
      );
    } else if (chordType == 'Bbm') {
      chordUI = BbChordUI(
        chordName: 'Bbm',
        imagePath: 'https://www.pianochord.org/images/b_flat_7.png',
      );
    } else if (chordType == 'Bbm7') {
      chordUI = BbChordUI(
        chordName: 'Bbm7',
        imagePath: 'https://www.pianochord.org/images/b_flat_m7.png',
      );
    } else if (chordType == 'Bbdim') {
      chordUI = BbChordUI(
        chordName: 'Bbdim',
        imagePath: 'https://www.pianochord.org/images/b_flat_maj7.png',
      );
    } else if (chordType == 'Bbaug') {
      chordUI = BbChordUI(
        chordName: 'Bbaug',
        imagePath: 'https://www.pianochord.org/images/b_flat_minmaj7.png  ',
      );
    } else if (chordType == 'Bb6') {
      chordUI = BbChordUI(
        chordName: 'Bb6',
        imagePath: 'https://www.pianochord.org/images/b_flat_6.png',
      );
    } else if (chordType == 'Bbmaj7') {
      chordUI = BbChordUI(
        chordName: 'Bbmaj7',
        imagePath: 'https://www.pianochord.org/images/b_flat_m6.png',
      );
    } else if (chordType == 'Bb9') {
      chordUI = BbChordUI(
        chordName: 'Bb9',
        imagePath: 'https://www.pianochord.org/images/b_flat_9.png',
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
    'B7',
    'Bm',
    'Bm7',
    'Bdim',
    'Baug',
    'B6',
    'Bmaj7',
    'B9',
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
    } else if (chordType == 'B7') {
      chordUI = BChordUI(
        chordName: 'B7',
        imagePath: 'https://www.pianochord.org/images/bm.png',
      );
    } else if (chordType == 'Bm') {
      chordUI = BChordUI(
        chordName: 'Bm',
        imagePath: 'https://www.pianochord.org/images/b7.png',
      );
    } else if (chordType == 'Bm7') {
      chordUI = BChordUI(
        chordName: 'Bm7',
        imagePath: 'https://www.pianochord.org/images/bmaj7.png',
      );
    } else if (chordType == 'Bdim') {
      chordUI = BChordUI(
        chordName: 'Bdim',
        imagePath: 'https://www.pianochord.org/images/bminmaj7.png',
      );
    } else if (chordType == 'Baug') {
      chordUI = BChordUI(
        chordName: 'Baug',
        imagePath: 'https://www.pianochord.org/images/b6.png',
      );
    } else if (chordType == 'B6') {
      chordUI = BChordUI(
        chordName: 'B6',
        imagePath: 'https://www.pianochord.org/images/b6.png',
      );
    } else if (chordType == 'Bmaj7') {
      chordUI = BChordUI(
        chordName: 'Bmaj7',
        imagePath: 'https://www.pianochord.org/images/bm6.png',
      );
    } else if (chordType == 'B9') {
      chordUI = BChordUI(
        chordName: 'B9',
        imagePath: 'https://www.pianochord.org/images/b9.png',
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