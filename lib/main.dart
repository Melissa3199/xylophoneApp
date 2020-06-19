import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main()=> runApp(Xylophone());


class Xylophone extends StatelessWidget {
  Expanded BuildKey({int numbersound, int color}) {
    return Expanded(
      child: FlatButton(
        color: Colors.red[color],
        onPressed: () {
          soundchange(numbersound);
        },
      ),
    );
  }

  void soundchange(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[400],
          centerTitle: true,
          title: Text(
            'Xylophone',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 25,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                BuildKey(numbersound:1, color:600),
                BuildKey(numbersound:2, color:500),
                BuildKey(numbersound:3, color:400),
                BuildKey(numbersound:4, color:300),
                BuildKey(numbersound:3, color:200),
                BuildKey(numbersound:2, color:100),
                BuildKey(numbersound:1, color:50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
