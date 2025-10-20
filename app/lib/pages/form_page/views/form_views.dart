import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/formulario_cubit.dart';
import '../cubit/formulario_state.dart';
import '../widgets/loading_form.dart';
import '../widgets/success_form.dart';

class FormView extends StatelessWidget {
  final String nombre;
  final String correo;
  final String password;

  const FormView({
    super.key,
    required this.nombre,
    required this.correo,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FormularioCubit()..cargarDatos(),
      child: BlocBuilder<FormularioCubit, FormularioState>(
        builder: (context, state) {
          if (state is FormularioLoading) {
            return const LoadingForm();
          } else if (state is FormularioSuccess) {
            return SuccessForm(
              nombre: nombre,
              correo: correo,
              password: password,
            );
          } else {
            return const Text("Cargando...");
          }
        },
      ),
    );
  }
}
