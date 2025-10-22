import 'package:flutter/material.dart';
import 'dart:async';

class SuccessForm extends StatefulWidget {
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
  State<SuccessForm> createState() => _SuccessFormState();
}

class _SuccessFormState extends State<SuccessForm> {
  bool _mostrarDatos = false;

  @override
  void initState() {
    super.initState();
    // Simula carga de 2 segundos
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _mostrarDatos = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'https://media.istockphoto.com/id/1186972461/es/foto/coche-blanco-gen%C3%A9rico-aislado-sobre-fondo-blanco.jpg?s=612x612&w=0&k=20&c=hQgzsapAkGEo8gAmoTci9Ce6My3zsQQD8lST6C23yEY=',
          height: 200,
          width: 300,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 20),

      
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 600),
          child: _mostrarDatos
              ? Column(
                  key: const ValueKey('datos'),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nombre: ${widget.nombre}",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Correo: ${widget.correo}",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Contraseña: ${widget.password}",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              : const CircularProgressIndicator(color: Colors.red),
        ),
      ],
    );
  }
}
