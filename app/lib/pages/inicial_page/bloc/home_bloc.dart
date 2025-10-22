import 'package:bloc/bloc.dart';
import 'package:app/pages/inicial_page/bloc/home_event.dart';
import 'package:app/pages/inicial_page/bloc/home_state.dart';
import 'package:app/services/api.dart';

class FormularioBloc extends Bloc<FormularioEvent, FormularioState> {
  final DioApi api;

  FormularioBloc(this.api) : super(FormularioInitial()) {
    on<EnviarFormularioEvent>(_onEnviarFormulario);
  }

  Future<void> _onEnviarFormulario(
      EnviarFormularioEvent event, Emitter<FormularioState> emit) async {
    emit(FormularioLoading());
    await Future.delayed(const Duration(seconds: 2)); 
    try {
      final usuarios = await api.getUsuarios();

      final encontrado = usuarios.any((u) =>
          u.nombre.trim().toLowerCase() == event.nombre.trim().toLowerCase() &&
          u.correo.trim().toLowerCase() == event.correo.trim().toLowerCase() &&
          u.password == event.password);

      if (encontrado) {
        emit(FormularioSuccess());
      } else {
        emit(const FormularioFailure('Usuario no encontrado.'));
      }
    } catch (e) {
      emit(FormularioFailure('Error: $e'));
    }
  }
}
