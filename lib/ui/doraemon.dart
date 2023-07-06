import 'package:doraemon/ui/counter/counter.dart';
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
      home: const CounterPage(title: "Counter"),
    );
  }
}
