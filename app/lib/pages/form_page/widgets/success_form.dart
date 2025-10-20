import 'package:flutter/material.dart';

class SuccessForm extends StatelessWidget {
  final String nombre;
  final String correo;
  final String password;

  const SuccessForm({
    super.key,
    required this.nombre,
    required this.correo,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          "https://media.istockphoto.com/id/1186972461/es/foto/coche-blanco-gen%C3%A9rico-aislado-sobre-fondo-blanco.jpg?s=612x612&w=0&k=20&c=hQgzsapAkGEo8gAmoTci9Ce6My3zsQQD8lST6C23yEY=",
          height: 180,
        ),
        const SizedBox(height: 30),
        Text("Nombre: $nombre"),
        Text("Correo: $correo"),
        Text("Contraseña: $password"),
      ],
    );
  }
}
