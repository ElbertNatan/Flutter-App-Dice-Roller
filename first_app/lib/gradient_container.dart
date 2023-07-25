import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startGradientAlignment = Alignment.topLeft;
const endGradientAlignment = Alignment.bottomRight;
const initialGradient = [Colors.deepOrangeAccent, Colors.deepPurpleAccent];

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: initialGradient,
          begin: startGradientAlignment,
          end: endGradientAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Hello World!'),
      ),
    );
  }
}
