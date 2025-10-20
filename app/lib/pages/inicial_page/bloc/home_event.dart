import 'package:equatable/equatable.dart';

abstract class FormularioEvent extends Equatable {
  const FormularioEvent();

  @override
  List<Object> get props => [];
}

class EnviarFormularioEvent extends FormularioEvent {
  final String nombre;
  final String correo;
  final String password;

  const EnviarFormularioEvent({
    required this.nombre,
    required this.correo,
    required this.password,
  });

  @override
  List<Object> get props => [nombre, correo, password];
}
