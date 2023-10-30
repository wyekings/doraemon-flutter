import 'package:flutter/material.dart';

class ParentContainedStateWidget extends StatefulWidget {
  const ParentContainedStateWidget({super.key});

  @override
  State createState() => ParentContainedState();
}

class ParentContainedState extends State<ParentContainedStateWidget> {
  bool _active = false;

  void _handleTap(bool newState) {
    setState(() {
      _active = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TapBoxWidget(active: _active, onChanged: _handleTap);
  }
}

class TapBoxWidget extends StatelessWidget {
  const TapBoxWidget({
    super.key,
    this.active = false,
    required this.onChanged,
  });

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
            color: active ? Colors.lightGreen.shade700 : Colors.grey.shade600),
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
