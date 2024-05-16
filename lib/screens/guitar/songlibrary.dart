import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SongListScreen extends StatelessWidget {
  SongListScreen({super.key});

  final List<Song> songs = [
    Song(
      title: 'Rainbow',
      artist: 'Southborder',
      lyrics: "[Verse 1]\n\nE\nFallin' out, fallin' in\nF#m\nNothing's sure in this world, no no\nE\nBreaking down, breaking in\nF#m                         C\nNever knowing what lies ahead\nD                  E  F#m\nWe can really never tell it all, no no\n\n\n[Verse 2]\n\nE\nSay goodbye say hello\nF#m\nTo a lover or friend\nE\nSometimes we never could understand\nF#m                       C\nWhy some things begin with just love\nD                        E  F#m\nWe can never have it all, no no no ohh\n\n\n[Bridge]\n\nE               F#m\nBut oh, can't you see"
    ),
    Song(
      title: 'Tagpuan',
      artist: 'Moira Dela Torre',
      lyrics: "[Chords]\nBm7  020233\nAm7  x02013\n\n[Intro]\nG Bm7 Cadd9 (2x)\n\n[Verse 1]\nG            Bm7\nDi, di ko inakalang\n    Cadd9        G\nDarating din sa akin\n       G                     Bm7\nNung ako'y nanalangin kay Bathala\n   Cadd9      G\nNaubusan ng bakit\n\n[Refrain 1]\nCadd9    G\nBakit umalis ng walang sabi\nCadd9           G\nBakit, di sya lumaban kahit konti?\nCadd9        Am7\nBakit, di maitama ang tadhana?\n\n[Chorus 1]\n     G      Bm7      Cadd9\nAt nakita kita sa tagpuan ni Bathala\n      G         Bm7      Cadd9\nMay kinang sa mata na di maintindihan\n    G           Bm7    Cadd9\nTumingin kung saan sinubukan kong lumisan\n     Am7   Bm7    Cadd9\nAt tumigil ang mundo\n       Am7   Bm7  Cadd9\nNung ako'y ituro mo\nD\nSiya ang panalangin ko\n\n[Intrumental]\nG Bm7 Cadd9\n\n[Verse 2]\n      G            Bm7\nAt hindi, di mapaliwanag\n        Cadd9    G\nAng nangyari sa akin\n   G               Bm7\nSaksi ang lahat ng tala\n    Cadd9       G\nSa iyong panalangin\n\n[Refrain 2]\nCadd9     G\nPaano nasagot lahat ng bakit?\nCadd9    G\nDi makapaniwala sa nangyari\nCadd9       Am7\nPaano mo naitama ang tadhana?\n\n[Chorus 2]\n       G      Bm7      Cadd9\nNung nakita kita sa tagpuan ni Bathala\n      G         Bm7      Cadd9\nMay kinang sa mata na di maintindihan\n    G           Bm7    Cadd9\nTumingin kung saan sinubukan kong lumisan\n     Am7   Bm7    Cadd9\nAt tumigil ang mundo\n      Am7   Bm7  Cadd9  Cm\nNung ako'y ituro mo     oohhh...\n\n[Outro]\n      Am7   Bm7  Cadd9\nAt hindi ka lumayo\n      Am7     Bm7  Cadd9\nNung ako yung sumusuko\n     Am7   Bm7    Cadd9\nAt nagbago ang mundo\n      Am7       Bm7   Cadd9  Cm\nNung ako'y pinaglaban mo     ooohhh...\n     Am7   Bm7    Cadd9\nAt tumigil ang mundo\n       Am7    Bm7  Cadd9\nNoong ako'y pinili mo\nD\nSiya ang panalangin ko\n)"
    ),
    Song(
      title: 'Take All the Love',
      artist: 'Arthur Nery',
      lyrics: "Dm7              Am7   Gm    F     C\n    You'll be safe in my romance, babe\nDm7         Am7\n    Label's fading\nGm                     F      C\nBut I see you cravin' for more\nDm7           Am7\n    You're denying it\nGm                F            C\nBut you ain't controlling your actions\nDm7         Am7\n   Keep me guessing\nGm                       F\nBut don't keep me waiting for us\n\n[Chorus]\n      Dm7       Am7\nOh I live to appreciate you\nGm                       F    C\nTake all the love that I give\n          Dm7          Am7\nAll that I wish is for you to take me\nGm                              F  C\nBut I taste the lies on your lips\n              Dm7                 Am7\nI count the days when we're in love\n               Gm                     F  C\n'Cuz I only matter when he's not around\n          Dm7          Am7\nOh but I live to appreciate you\nGm                           F  C\nSo take all the love that I give\n\n       Dm7       Am7        GM       F C\nOhhhhh, Ooooooooh, Ooooooooh, Ooooooohhh\n\n[Verse 2]\nDm7           Am7\n     Got my heart on my sleeve\nGm                  F              C\nI'm beggin' the heavens to to be good to me\nDm7                 Am7\n      Are you obsessive love?\n Gm          F            C         Dm7\n'Cuz I'm tolerating all of your desires\n    Am7                     Gm\nI'll keep you wanting me more oh\n            F           C\nLeave but I'll keep you comin'\nDm7  Am7          Gm                     F   C\n   I'm sure it's my love that got you suffocated\n\n[Chorus]\n      Dm7          Am7\nOh I live to appreciate you\nGm                         F  C\nTake all the love that I give\n            Dm7        Am7\nAll that I wish is for you to take me\nGm                            F  C\nBut I taste the lies on your lips\n             Dm7                 Am7\nI count the days when we're in love\nGm                                    F  C\n'Cuz I only matter when he's not around\n          Dm7         Am7\nOh but I live to appreciate you\nGm                            F   C\nSo take all the love that I give\n\n[Bridge]\nDm7          Am7\nYou come over but not too often\n Gm                   F             C\nYou don't visit 'cuz you got more options\n\nDm7          Am7\nYou come over but not too often\n Gm                   F             C\nYou don't visit 'cuz you got more options\n\nDm7          Am7\nYou come over but not too often\n Gm                   F             C\nYou don't visit 'cuz you got more options\n\n[Chorus]\n      Dm7          Am7\nOh I live to appreciate you\nGm                         F  C\nTake all the love that I give\n            Dm7        Am7\nAll that I wish is for you to take me\nGm                            F  C\nBut I taste the lies on your lips\n             Dm7                 Am7\nI count the days when we're in love\nGm                                    F  C\n'Cuz I only matter when he's not around\n          Dm7         Am7\nOh but I live to appreciate you\nGm                            F   C\nSo take all the love that I give",
    ),
    Song(
      title: "Alumni Homecoming",
      artist: "Bigotilyo",
      lyrics: "[Verse]\n\nG        D           Em             C\n  Napatunganga nung bigla kitang nakita \npagkalipas ng mahabang panahon\nG             D                Em        C\n  High School pa tayo nung una kang makilala\nat tandang-tanda ko pa noon pa may sobrang lupit mo na\nHindi ko alang alam kung pano basta biglang nagsama tayo\ndi nagtagal ay napaibig mo ako\n\nG        D           Em             C\nMula umaga hanggang uwian natin laging magkasama tayong dalawa\nparang kahapon lang nangyari sa akin ang lahat \ntila isang tulang medyo romantiko ang banat\nngunit ng napag-usapan bigla na lang nagkahiyaan\nmula noon hindi na tayo nag-pansinan\n\n\n[Chorus]\n\n   G        D              Em\nAt bakit ko ba pinabayaan \nmawala ng hindi inaasahan\nparang nasayang lang \nnawala na      wala ng nagawa\n\n\n[Verse]\n\nG         D           Em       C\nPanay ang plano ngunit panay ang urong\nat inabot na ng dulo ng taon\nGraduation natin nung biglang nag-absent partner ko\ntadhana nga naman naging mag-partner tayo\nhindi ko rin maintindihan kung bakit ba umiiwas ka sa akin tuwing maglalapit \ntila isang suntok sa buwan ang iyong mga dahilan\nhindi ka rin nagpaliwanag tanging ikaw lang ang nakakaalam\nHindi na kita nakita, at di na rin nakibalita,\nparang bula bigla ka na lang nawala\n\n\n[Chorus]\n\n   G        D              Em\nAt bakit ko ba pinabayaan \nmawala ng hindi inaasahan\nparang nasayang lang \nnawala na      wala ng nagawa\n\n\n[Bridge]\n\n   G          D         Em        C\nSa Alumni Homecoming nakita kang muli\nmag-isa ka lang pala tulad ko (tulad ko)\n\n\n[Chorus]\n\nG        D              Em\nAt bakit ko ba pinabayaan \nmawala ng hindi inaasahan\nparang nasayang lang \nnawala na      wala ng nagawa"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 40, 55, 1),
        title: Text('Song List'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.white),
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
        child: ListView.builder(
          itemCount: songs.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: ListTile(
                title: Text(songs[index].title, style: TextStyle(color: Color.fromRGBO(244, 55, 109, 1),)),
                subtitle: Text(songs[index].artist, style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SongDetailScreen(song: songs[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class Song {
  final String title;
  final String artist;
  final String lyrics;

  Song({
    required this.title,
    required this.artist,
    required this.lyrics,
  });
}

class SongDetailScreen extends StatelessWidget {
  final Song song;

  SongDetailScreen({required this.song});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(song.title),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg-lyrics.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
         
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(kToolbarHeight + 16),
                Text(
                  'Artist: ${song.artist}',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Gap(16),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      'Lyrics:\n${song.lyrics}',
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SongListScreen(),
  ));
}
