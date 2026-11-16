import 'package:atividade_pdm/views/dinner.dart';
import 'package:flutter/material.dart';
import 'package:atividade_pdm/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discovery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(title: 'Discovery'),
        '/dinner': (context) => const DinnerPage()
      },
    );
  }
}
