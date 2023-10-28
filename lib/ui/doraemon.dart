import 'package:doraemon/ui/pages/counter/counter.dart';
import 'package:doraemon/ui/pages/home/home.dart';
import 'package:flutter/material.dart';

class DoraemonApp extends StatelessWidget {
  const DoraemonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Doraemon",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'counter': (context) => const CounterPage(title: 'Counter')
      },
    );
  }
}
