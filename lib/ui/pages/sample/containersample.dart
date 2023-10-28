import 'package:flutter/material.dart';

class ContainerSnippet extends StatelessWidget {
  const ContainerSnippet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        children: <Widget>[
          Image.network('https://www.example.com/1.png'),
          const Text('A')
        ],
      ),
    );
  }
}
