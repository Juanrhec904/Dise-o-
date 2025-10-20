import 'package:flutter/material.dart';

class LoadingForm extends StatelessWidget {
  const LoadingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
