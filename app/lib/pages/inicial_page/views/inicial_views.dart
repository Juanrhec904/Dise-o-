import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/pages/inicial_page/bloc/home_bloc.dart';
import 'package:app/pages/inicial_page/bloc/home_event.dart';
import 'package:app/pages/inicial_page/bloc/home_state.dart';
import 'package:app/pages/form_page/views/form_views.dart';
import '../widgets/inicial_widget.dart';
import '../widgets/loading_widget.dart';
import '../widgets/failure_widget.dart';

class InicialPage extends StatelessWidget {
  const InicialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nombreCtrl = TextEditingController();
    final correoCtrl = TextEditingController();
    final passCtrl = TextEditingController();

    return BlocProvider(
      create: (_) => FormularioBloc(),
      child: BlocConsumer<FormularioBloc, FormularioState>(
        listener: (context, state) {
          if (state is FormularioSuccess) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => FormView(
                  nombre: nombreCtrl.text,
                  correo: correoCtrl.text,
                  password: passCtrl.text,
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is FormularioLoading) {
            return const LoadingWidget();
          } else if (state is FormularioFailure) {
            return FailureWidget(mensaje: state.mensaje);
          } else {
            return InicialWidget(
              nombreCtrl: nombreCtrl,
              correoCtrl: correoCtrl,
              passCtrl: passCtrl,
              onPressed: () {
                context.read<FormularioBloc>().add(
                      EnviarFormularioEvent(
                        nombre: nombreCtrl.text,
                        correo: correoCtrl.text,
                        password: passCtrl.text,
                      ),
                    );
              },
            );
          }
        },
      ),
    );
  }
}
