import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PlayerButton(number: 1, color: Colors.deepPurple),
                PlayerButton(number: 2, color: Colors.blue),
                PlayerButton(number: 3, color: Colors.red),
                PlayerButton(number: 4, color: Colors.indigo),
                PlayerButton(number: 5, color: Colors.deepPurpleAccent),
                PlayerButton(number: 6, color: Colors.teal),
                PlayerButton(number: 7, color: Colors.green)
              ],
            ),
          )
        )
      ),
    );
  }
}

class PlayerButton extends StatelessWidget {
  final int number;
  final Color color;


  const PlayerButton({Key? key, required this.number, required this.color, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
            final AudioCache player = new AudioCache();
            player.play('note$number.wav');
        },
        style: TextButton.styleFrom(
            backgroundColor: color
        ),
        child: Text(''),
      ),
    );
  }
}
