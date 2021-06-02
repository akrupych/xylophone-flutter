import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playNote(1);
                  },
                ),
                FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playNote(2);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playNote(3);
                  },
                ),
                FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playNote(4);
                  },
                ),
                FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playNote(5);
                  },
                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playNote(6);
                  },
                ),
                FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    playNote(7);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playNote(int note) {
    final player = AudioCache();
    player.play("note$note.wav");
  }
}
