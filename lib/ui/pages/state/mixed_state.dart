import 'package:flutter/material.dart';

class MixedStateWidget extends StatefulWidget {
  const MixedStateWidget({super.key});

  @override
  State createState() => MixedState();
}

class MixedState extends State<MixedStateWidget> {
  bool _active = false;

  void _handleTap(bool newState) {
    setState(() {
      _active = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TapBoxStateWidget(active: _active, onChanged: _handleTap);
  }
}

class TapBoxStateWidget extends StatefulWidget {
  const TapBoxStateWidget({
    super.key,
    this.active = false,
    required this.onChanged,
  });

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<StatefulWidget> createState() => TapBoxState();
}

class TapBoxState extends State<TapBoxStateWidget> {
  bool _highlight = false;

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handTapDown(TapDownDetails details) {
    setState(() {
      setState(() {
        _highlight = true;
      });
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      onTapUp: _handleTapUp,
      onTapDown: _handTapDown,
      onTapCancel: _handleTapCancel,
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color:
              widget.active ? Colors.lightGreen.shade700 : Colors.grey.shade600,
          border: _highlight ? Border.all(color: Colors.red.shade700) : null,
        ),
        child: Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
