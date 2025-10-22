import 'package:app/pages/inicial_page/views/inicial_views.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc y Dio App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const InicialPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
