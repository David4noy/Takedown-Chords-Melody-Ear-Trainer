import 'package:flutter/material.dart';

class KeyButton extends StatefulWidget {
  final String keyName;
  final VoidCallback? onTapDown;
  final VoidCallback? onTapEnded;
  final Color textColor;
  final Color backgroundColor;
  final Color highlightColor;

  const KeyButton({
    super.key,
    required this.keyName,
    required this.textColor,
    required this.backgroundColor,
    required this.highlightColor,
    this.onTapDown,
    this.onTapEnded,
  });

  @override
  // ignore: library_private_types_in_public_api
  _KeyButtonState createState() => _KeyButtonState();
}

class _KeyButtonState extends State<KeyButton> {
  bool _isTapped = false;
  bool _canReceiveTap = true;

  void _performTapDownAction() {
    if (_canReceiveTap && widget.onTapDown != null) {
      widget.onTapDown!();
      _canReceiveTap =false; // Disable further onTapDown actions for this button
    }
  }

  void _performTapEndAction() {
    if (widget.onTapEnded != null) {
      widget.onTapEnded!();
    }
    _canReceiveTap = true; // Enable onTapDown actions for this button again
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isTapped = true;
        });
        _performTapDownAction();
      },
      onTapUp: (_) {
        setState(() {
          _isTapped = false;
        });
        _performTapEndAction();
      },
      onTapCancel: () {
        setState(() {
          _isTapped = false;
        });
        _performTapEndAction();
      },
      onPanUpdate: (details) {
        // Check if the touch moves outside the current button's boundaries
        // if (!_isTapped && _canReceiveTap) {
        //   setState(() {
        //     _isTapped = true;
        //   });
        //   _performTapDownAction();
        // }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _isTapped ? widget.highlightColor : widget.backgroundColor,
          borderRadius: BorderRadius.circular(_isTapped ? 4 : 8),
          border: Border.all(
            color: widget.textColor,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            widget.keyName,
            style: TextStyle(
              color: widget.textColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
