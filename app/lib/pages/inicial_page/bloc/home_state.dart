import 'package:equatable/equatable.dart';

abstract class FormularioState extends Equatable {
  const FormularioState();

  @override
  List<Object> get props => [];
}

class FormularioInitial extends FormularioState {}

class FormularioLoading extends FormularioState {}

class FormularioSuccess extends FormularioState {}

class FormularioFailure extends FormularioState {
  final String mensaje;

  const FormularioFailure(this.mensaje);

  @override
  List<Object> get props => [mensaje];
}
