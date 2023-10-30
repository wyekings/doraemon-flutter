import 'package:flutter/material.dart';

class SelfContainedStateWidget extends StatefulWidget {
  const SelfContainedStateWidget({super.key});

  @override
  State<StatefulWidget> createState() => SelfContainedState();
}

class SelfContainedState extends State<SelfContainedStateWidget> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
            color: _active ? Colors.lightGreen.shade700 : Colors.grey.shade600),
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
