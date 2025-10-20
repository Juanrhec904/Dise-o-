import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  final String mensaje;
  const FailureWidget({super.key, required this.mensaje});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error, color: Colors.red, size: 60),
        const SizedBox(height: 10),
        Text(mensaje, style: const TextStyle(fontSize: 18, color: Colors.red)),
      ],
    );
  }
}
