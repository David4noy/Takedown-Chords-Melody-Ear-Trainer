import 'package:flutter/material.dart';
import 'package:takedown_ear_trainer/Keyboard/key_button.dart';
import 'package:takedown_ear_trainer/Keyboard/note.dart';

class PianoKeyboardBuilder extends StatefulWidget {
  final List<Note> pianoNotes;
  final bool isBlack;
  final Function(Note) onTapDown;
  final Function(Note) onTapEnded;

  const PianoKeyboardBuilder({
    super.key,
    required this.pianoNotes,
    required this.isBlack,
    required this.onTapDown,
    required this.onTapEnded,
  });

  @override
  State<PianoKeyboardBuilder> createState() => _PianoKeyboardBuilderState();
}

class _PianoKeyboardBuilderState extends State<PianoKeyboardBuilder> {
  Color get backgroundColor => widget.isBlack ? Colors.black : Colors.white;
  Color get textColor => widget.isBlack ? Colors.white : Colors.black;
  Color highlightColor = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            for (int i = 0; i < widget.pianoNotes.length; i++)
              Expanded(
                child: KeyButton(
                  keyName: widget.pianoNotes[i].name,
                  textColor: widget.pianoNotes[i] != Note.space
                      ? textColor
                      : Colors.transparent,
                  backgroundColor: widget.pianoNotes[i] != Note.space
                      ? backgroundColor
                      : Colors.transparent,
                  highlightColor: widget.pianoNotes[i] != Note.space
                      ? highlightColor
                      : Colors.transparent,
                  onTapDown: () {
                    widget.onTapDown(widget.pianoNotes[i]);
                  },
                  onTapEnded: () {
                    widget.onTapEnded(widget.pianoNotes[i]);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
