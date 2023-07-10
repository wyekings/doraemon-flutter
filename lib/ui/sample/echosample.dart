import 'package:flutter/material.dart';

class EchoSampleWidget extends StatelessWidget {
  const EchoSampleWidget({
    super.key,
    required this.text,
    this.backgroundColor = Colors.blue,
  });

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}
