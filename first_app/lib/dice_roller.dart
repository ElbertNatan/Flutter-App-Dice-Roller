import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var imagemInicial = './assets/images/dice-1.png';

  void rolarDado() {
    setState(() {
      imagemInicial = './assets/images/dice-${Random().nextInt(6) + 1}.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(imagemInicial, width: 200),
        //const SizedBox(height: 20),
        const SizedBox(height: 20),
        TextButton(
            onPressed: () {
              rolarDado();
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Rolar Dado'))
      ],
    );
  }
}
