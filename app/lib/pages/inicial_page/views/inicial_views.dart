import 'package:app/pages/form_page/views/form_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/pages/inicial_page/bloc/home_bloc.dart';
import 'package:app/pages/inicial_page/bloc/home_event.dart';
import 'package:app/pages/inicial_page/bloc/home_state.dart';
import 'package:app/pages/inicial_page/widgets/inicial_widget.dart';
import 'package:app/pages/inicial_page/widgets/failure_widget.dart';
import 'package:app/pages/inicial_page/widgets/loading_widget.dart';
import 'package:app/services/api.dart';

class InicialPage extends StatelessWidget {
  const InicialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nombreCtrl = TextEditingController();
    final correoCtrl = TextEditingController();
    final passCtrl = TextEditingController();

    return BlocProvider(
      create: (_) => FormularioBloc(DioApi()),
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
            return const Scaffold(body: LoadingWidget());
          } else if (state is FormularioFailure) {
            return Scaffold(body: FailureWidget(mensaje: state.mensaje));
          } else {
            return Scaffold(
              body: InicialWidget(
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
              ),
            );
          }
        },
      ),
    );
  }
}
