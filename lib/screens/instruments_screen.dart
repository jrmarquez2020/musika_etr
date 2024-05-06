import 'package:flutter/material.dart';
import 'package:musika/screens/drum/mysongs.dart';
import 'package:musika/screens/electric_guitar/mysongs.dart';
import 'package:musika/screens/guitar/mainscreen.dart';
import 'package:musika/screens/guitar/mysongs.dart';
import 'package:musika/screens/piano/mainscreen.dart';
import 'package:musika/screens/piano/mysongs.dart';

class InstrumentScreen extends StatelessWidget {
  const InstrumentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Musika Instruments'),
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
                icon: _getCardIcon(index),
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

  Color _getCardColor(int index) {
    switch (index) {
      case 0:
        return Colors.blue;
      case 1:
        return Colors.green;
      case 2:
        return Colors.orange;
      case 3:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  IconData _getCardIcon(int index) {
    switch (index) {
      case 0:
        return Icons.music_note;
      case 1:
        return Icons.keyboard;
      case 2:
        return Icons.keyboard;
      case 3:
        return Icons.music_note;
      default:
        return Icons.error;
    }
  }
}

class SquareCard extends StatelessWidget {
  final String label;
  final Color color;
  final IconData icon;

  const SquareCard({Key? key, required this.label, required this.color, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
