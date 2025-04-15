import 'package:flutter/material.dart';
import 'package:takedown_ear_trainer/screens/keyboard_screen.dart';

class EarTrainigHome extends StatefulWidget {
  const EarTrainigHome({super.key});

  @override
  State<EarTrainigHome> createState() => _EarTrainigHomeState();
}

class _EarTrainigHomeState extends State<EarTrainigHome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            _pushKeyBoardScreenButton(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _pushKeyBoardScreenButton() {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const KeyboardScreen()),
        );
      }, 
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        backgroundColor: Colors.blue.withAlpha(120),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide( 
            color: Colors.blue, 
            width: 2.0, 
          ),
        )
      ),
      child: Text(
        'Keyboard Screen',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
      )
    );
  }
}