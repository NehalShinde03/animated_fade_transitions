import 'package:flutter/material.dart';

class AnimatedFadeTransition extends StatefulWidget {
  const AnimatedFadeTransition({super.key});

  @override
  State<AnimatedFadeTransition> createState() => _AnimatedFadeTransitionState();
}

class _AnimatedFadeTransitionState extends State<AnimatedFadeTransition> {

  bool _isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              _isSelect=!_isSelect;
            });
          },
          child: AnimatedCrossFade(
            firstChild: Container(
              width: 250,
              height: 200,
              color: Colors.red,
            ),
            secondChild: Container(
              width: 200,
              height: 250,
              color: Colors.green,
            ),
            crossFadeState: _isSelect ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
