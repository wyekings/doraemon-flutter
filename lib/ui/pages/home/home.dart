import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          itemCount: 1,
          itemBuilder: (context, index) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'counter');
                },
                child: const Text('Counter'),
              ),
            );
          }),
    );
  }
}
