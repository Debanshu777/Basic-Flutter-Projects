import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int notenum) {
    final player = AudioCache();
    player.play('note$notenum.wav');
  }

  Expanded makekey(Color color, int soundnum) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(soundnum);
        },
        color: color,
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            makekey(Colors.red, 1),
            makekey(Colors.orange, 2),
            makekey(Colors.yellow, 3),
            makekey(Colors.green, 4),
            makekey(Colors.teal, 5),
            makekey(Colors.blue, 6),
            makekey(Colors.purple, 7),
          ],
        )),
      ),
    );
  }
}
