import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int key) {
    final player = AudioCache();
    player.play("note$key.wav");
  }

  Expanded buildKey(Color color, int key) => Expanded(
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: () {
            playSound(key);
          },
          child: Text(""),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.yellow, 2),
                buildKey(Colors.green, 3),
                buildKey(Colors.lightGreen, 4),
                buildKey(Colors.blue, 5),
                buildKey(Colors.orange, 6),
                buildKey(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
