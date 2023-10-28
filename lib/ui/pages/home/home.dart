import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Module> items = [
    Module('Counter', 'counter'),
    Module('Get State', 'get_state'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            Module _module = items[index];
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, _module.route);
                },
                child: Text(_module.name),
              ),
            );
          }),
    );
  }
}

class Module {
  final String name;
  final String route;

  Module(this.name, this.route);
}
