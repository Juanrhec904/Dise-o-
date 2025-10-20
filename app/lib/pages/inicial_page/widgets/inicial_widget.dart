import 'package:flutter/material.dart';

class InicialWidget extends StatelessWidget {
  final TextEditingController nombreCtrl;
  final TextEditingController correoCtrl;
  final TextEditingController passCtrl;
  final VoidCallback onPressed;

  const InicialWidget({
    super.key,
    required this.nombreCtrl,
    required this.correoCtrl,
    required this.passCtrl,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Inicio de Sesión",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          TextField(controller: nombreCtrl, decoration: const InputDecoration(labelText: 'Nombre')),
          const SizedBox(height: 10),
          TextField(controller: correoCtrl, decoration: const InputDecoration(labelText: 'Correo')),
          const SizedBox(height: 10),
          TextField(controller: passCtrl, obscureText: true, decoration: const InputDecoration(labelText: 'Contraseña')),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: onPressed, child: const Text('Ingresar')),
        ],
      ),
    );
  }
}
