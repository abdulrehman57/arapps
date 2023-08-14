import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class PianoScreen extends StatefulWidget {
  const PianoScreen({Key? key}) : super(key: key);

  @override
  State<PianoScreen> createState() => _PianoScreenState();
}

class _PianoScreenState extends State<PianoScreen> {
  void clickSound(int number) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("audio/assets_note$number.wav"),
    );
  }

  Widget pianoButton(int number, Color clr) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: clr,
        ),
        onPressed: () {
          clickSound(number);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Piano App'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            pianoButton(1, Colors.yellow.shade700),
            pianoButton(2, Colors.orange.shade700),
            pianoButton(3, Colors.teal.shade700),
            pianoButton(4, Colors.purple.shade700),
            pianoButton(5, Colors.green.shade700),
            pianoButton(6, Colors.blue.shade700),
            pianoButton(7, Colors.red.shade700),
          ],
        ),
      ),
    );
  }
}
