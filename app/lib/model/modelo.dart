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
        nombre: json['usuario'] ?? '',
        correo: json['correo'] ?? '',
        password: json['password'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'usuario': nombre,
        'correo': correo,
        'password': password,
      };
}
