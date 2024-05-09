import 'package:flutter/material.dart';
import 'package:musika/screens/drum/mysongs.dart';
import 'package:musika/screens/electric_guitar/mysongs.dart';
import 'package:musika/screens/guitar/mainscreen.dart';
import 'package:musika/screens/piano/mainscreen.dart';

class InstrumentScreen extends StatelessWidget {
  const InstrumentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromRGBO(32, 40, 55, 1),
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: const Text('MUSIKA'),
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Color.fromRGBO(244, 55, 109, 1), fontSize: 30,fontWeight: FontWeight.bold),
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
          padding: EdgeInsets.only(top: 100),
          child: Center(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(4, (index) {
                return GestureDetector(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => MainScreenGuitar()),
                        );
                        break;
                      case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => MainScreenPiano()),
                        );
                        break;
                      case 2:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => DrumScreen()),
                        );
                        break;
                      case 3:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ElectricGuitarScreen()),
                        );
                        break;
                    }
                  },
                  child: SquareCard(
                    label: _getCardLabel(index),
                    color: _getCardColor(index),
                    image: _getCardImage(index),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  String _getCardLabel(int index) {
    switch (index) {
      case 0:
        return 'Guitar';
      case 1:
        return 'Piano';
      case 2:
        return 'Drum';
      case 3:
        return 'Ukelele';
      default:
        return '';
    }
  }

  Color _getCardColor(int index) {
    switch (index) {
      case 0:
        return Colors.white;
      case 1:
        return Colors.white;
      case 2:
        return Colors.white;
      case 3:
        return Colors.white;
      default:
        return Colors.white;
    }
  }

  String _getCardImage(int index) {
    switch (index) {
      case 0:
        return 'assets/images/guitar.png';
      case 1:
        return 'assets/images/piano1.jpg';
      case 2:
        return 'assets/images/drum.jpeg';
      case 3:
        return 'assets/images/ukelele.png';
      default:
        return '';
    }
  }
}

class SquareCard extends StatelessWidget {
  final String label;
  final Color color;
  final String image;

  const SquareCard({Key? key, required this.label, required this.color, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        color: color,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 48,
                height: 48,
               
              ),
              SizedBox(height: 10),
              Text(
                label,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
