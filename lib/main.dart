import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playAudio(int number) {
    final player = new AudioCache();
    player.play('note$number.wav');
  }

  Widget createRow({int number, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playAudio(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createRow(number: 1, color: Colors.red),
              createRow(number: 2, color: Colors.orange),
              createRow(number: 3, color: Colors.yellow),
              createRow(number: 4, color: Colors.green),
              createRow(number: 5, color: Colors.teal),
              createRow(number: 6, color: Colors.blue),
              createRow(number: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
