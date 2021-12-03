import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Widget buildKey({int num, Color cl}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: cl,
        ),
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(num: 1, cl: Colors.blue),
              buildKey(num: 2, cl: Colors.green),
              buildKey(num: 3, cl: Colors.yellow),
              buildKey(num: 4, cl: Colors.cyanAccent),
              buildKey(num: 5, cl: Colors.teal),
              buildKey(num: 6, cl: Colors.red),
              buildKey(num: 7, cl: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
