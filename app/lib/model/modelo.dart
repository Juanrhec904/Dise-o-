class Usuario {
  final String nombre;
  final String correo;
  final String password;

  Usuario({
    required this.nombre,
    required this.correo,
    required this.password,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        nombre: json['nombre'],
        correo: json['correo'],
        password: json['password'],
      );
}
