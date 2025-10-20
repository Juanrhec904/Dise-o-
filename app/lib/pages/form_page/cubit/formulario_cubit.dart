import 'package:bloc/bloc.dart';
import 'formulario_state.dart';

class FormularioCubit extends Cubit<FormularioState> {
  FormularioCubit() : super(FormularioInitial());

  Future<void> cargarDatos() async {
    emit(FormularioLoading());
    await Future.delayed(const Duration(seconds: 3));
    emit(FormularioSuccess());
  }
}
