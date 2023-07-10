import 'package:flutter/material.dart';

class BuildContextSample extends StatelessWidget {
  const BuildContextSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold'),
      ),
      body: Builder(builder: (context) {
        Scaffold? scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
        return (scaffold?.appBar as AppBar).title ?? const Text('Not found');
      }),
    );
  }
}
