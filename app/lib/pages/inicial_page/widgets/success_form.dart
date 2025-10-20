import 'package:flutter/material.dart';

class SuccessWidget extends StatelessWidget {
  final String nombre;
  final String correo;
  final String password;

  const SuccessWidget({
    super.key,
    required this.nombre,
    required this.correo,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle_outline, size: 80, color: Colors.green),
          const SizedBox(height: 20),
          const Text(
            "Inicio de sesión exitoso",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text("Nombre: $nombre"),
          Text("Correo: $correo"),
          Text("Contraseña: $password"),
        ],
      ),
    );
  }
}
