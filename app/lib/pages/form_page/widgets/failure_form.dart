import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '❌ Error al enviar datos',
      style: TextStyle(color: Colors.red, fontSize: 18),
    );
  }
}
