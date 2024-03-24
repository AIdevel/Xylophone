import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

// => - used for Single Line of Code
void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  //Expanded Function
  Expanded change(Color color, String sound, String name) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero))),
        child: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets/$sound.mp3"),
            autoStart: true,
            showNotification: true,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Xylophone',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              change(Colors.red, 'song', 'Song1'),
              change(Colors.orange, 'aakhiya', 'Song2'),
              change(Colors.yellow, 'chir', 'Song3'),
              change(Colors.green, 'd', 'Song4'),
              change(Colors.blue, 'k', 'Song5'),
              change(Colors.indigoAccent, 'z', 'Song6'),
              change(Colors.indigo, 'ka', 'Song7'),
            ],
          ),
        ),
      ),
    );
  }
}
