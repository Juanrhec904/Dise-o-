import 'package:equatable/equatable.dart';

abstract class FormularioState extends Equatable {
  @override
  List<Object?> get props => [];
}

class FormularioInitial extends FormularioState {}
class FormularioLoading extends FormularioState {}
class FormularioSuccess extends FormularioState {}
