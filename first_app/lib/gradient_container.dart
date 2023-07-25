import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

var startGradientAlignment = Alignment.topLeft;
var endGradientAlignment = Alignment.bottomRight;
var initialGradient = [Colors.deepOrangeAccent, Colors.deepPurpleAccent];

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: initialGradient,
          begin: startGradientAlignment,
          end: endGradientAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
