import 'package:app/pages/inicial_page/bloc/home_event.dart';
import 'package:app/pages/inicial_page/bloc/home_state.dart';
import 'package:app/services/api.dart';
import 'package:bloc/bloc.dart';

class FormularioBloc extends Bloc<FormularioEvent, FormularioState> {
  final DioApi api = DioApi();

  FormularioBloc() : super(FormularioInitial()) {
    on<EnviarFormularioEvent>(_onEnviarFormulario);
  }

  Future<void> _onEnviarFormulario(
    EnviarFormularioEvent event,
    Emitter<FormularioState> emit,
  ) async {
    emit(FormularioLoading());
    await Future.delayed(const Duration(seconds: 3));

    final usuarios = await api.getUsuarios();
    final encontrado = usuarios.any((u) =>
        u.nombre == event.nombre &&
        u.correo == event.correo &&
        u.password == event.password);

    if (encontrado) {
      emit(FormularioSuccess());
    } else {
      emit(const FormularioFailure(mensaje: 'Usuario no encontrado.'));
    }
  }
}
