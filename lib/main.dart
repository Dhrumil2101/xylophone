import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void countnumber(int number){
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }
  Expanded expandbutton({required Color colors,required int number}){
    return Expanded(
      child: TextButton(
        onPressed: () {
          countnumber(number);

        },
        child:Text('',),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colors),),
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
            children:<Widget> [
              expandbutton(colors: Colors.red, number: 1),
              expandbutton(colors: Colors.purple, number: 2),
              expandbutton(colors: Colors.orange, number: 3),
              expandbutton(colors: Colors.pink, number: 4),
              expandbutton(colors: Colors.yellow, number: 5),
              expandbutton(colors: Colors.green, number: 6),
              expandbutton(colors: Colors.blue, number: 7),


            ],
          ),
        ),
      ),
    );
  }
}