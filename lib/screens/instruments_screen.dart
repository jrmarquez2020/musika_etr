import 'package:flutter/material.dart';
import 'package:musika/screens/drum/mysongs.dart';
import 'package:musika/screens/electric_guitar/mysongs.dart';
import 'package:musika/screens/guitar/mysongs.dart';
import 'package:musika/screens/piano/mysongs.dart';

class InstrumentScreen extends StatelessWidget {
  const InstrumentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instruments'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(4, (index) {
            return GestureDetector(
              onTap: () {
                
                switch (index) {
                  case 0:
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => GuitarScreen()),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PianoScreen()),
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
              ),
            );
          }),
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
        return 'Electric Guitar';
      default:
        return '';
    }
  }
}

class SquareCard extends StatelessWidget {
  final String label;

  const SquareCard({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
