import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startGradientAlignment = Alignment.topLeft;
const endGradientAlignment = Alignment.bottomRight;
const initialGradient = [Colors.deepOrangeAccent, Colors.deepPurpleAccent];

void rolarDado() {}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startGradientAlignment,
          end: endGradientAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('./assets/images/dice-1.png', width: 200),
            //const SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  rolarDado();
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28),
                ),
                child: Text('Rolar Dado'))
          ],
        ),
      ),
    );
  }
}
