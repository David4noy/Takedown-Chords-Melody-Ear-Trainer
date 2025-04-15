import 'package:flutter/material.dart';
import 'package:takedown_ear_trainer/Keyboard/piano_keyboard.dart';

class KeyboardScreen extends StatefulWidget {
  const KeyboardScreen({super.key});

  @override
  State<KeyboardScreen> createState() => _KeyboardScreenState();
}

class _KeyboardScreenState extends State<KeyboardScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    
    return Column(
      children: [
        _pianoKeyboard(width),
      ],
    );
  }

  Widget _pianoKeyboard(double screenWidth) {
    return PianoKeyboard(
      screenWidth: screenWidth,
      onTapDown: (note) {

      },
      onTapEnded: (note) {

      },
    );
  }
}