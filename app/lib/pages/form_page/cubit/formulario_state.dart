abstract class FormularioState {}

class FormularioInitial extends FormularioState {}

class FormularioLoading extends FormularioState {}

class FormularioSuccess extends FormularioState {}

class FormularioFailure extends FormularioState {
  final String mensaje;
  FormularioFailure(this.mensaje);
}
