import 'package:flutter/material.dart';
import 'package:takedown_ear_trainer/Keyboard/note.dart';
import 'package:takedown_ear_trainer/Keyboard/piano_keyboard_builder.dart';

class PianoKeyboard extends StatefulWidget {
  final double screenWidth;
  final Function(Note) onTapDown;
  final Function(Note) onTapEnded;

  const PianoKeyboard({
    super.key,
    required this.screenWidth,
    required this.onTapDown,
    required this.onTapEnded,
  });

  @override
  State<PianoKeyboard> createState() => _PianoKeyboardState();
}

class _PianoKeyboardState extends State<PianoKeyboard> {
  @override
  Widget build(BuildContext context) {
    double buttonWidth = (widget.screenWidth - 20.0) / 8.0;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: buttonWidth / 2),
            PianoKeyboardBuilder(
              pianoNotes: allBlackNotes,
              isBlack: true,
              onTapDown: (note) {
                widget.onTapDown(note);
              },
              onTapEnded: (note) {
                widget.onTapEnded(note);
              },
            ),
            SizedBox(width: buttonWidth / 2),
          ],
        ),
        Row(
          children: [
            const SizedBox(width: 10),
            PianoKeyboardBuilder(
              pianoNotes: allWhiteNotes,
              isBlack: false,
              onTapDown: (note) {
                widget.onTapDown(note);
              },
              onTapEnded: (note) {
                widget.onTapEnded(note);
              },
            ),
            const SizedBox(width: 10),
          ],
        ),
      ],
    );
  }
}
