import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Xylophone App')),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.amberAccent),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.deepPurpleAccent),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(
                        color: Colors.black, backgroundColor: Colors.blueGrey),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(
                        color: Colors.black, backgroundColor: Colors.orange),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(
                        color: Colors.black, backgroundColor: Colors.green),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(
                        color: Colors.black, backgroundColor: Colors.yellow),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(
                        color: Colors.black, backgroundColor: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
