
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.title, this.initValue = 0});

  final String title;
  final int initValue;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  void initState() {
    _counter = widget.initValue;
    super.initState();
    debugPrint('initState');
    // log('initState');
  }

  @override
  void didChangeDependencies() {
    debugPrint('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CounterPage oldWidget) {
    debugPrint('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void reassemble() {
    debugPrint('reassemble');
    super.reassemble();
  }

  @override
  void deactivate() {
    debugPrint('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    debugPrint('dispose');
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build----------->');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              "You have pushed the button this many times:",
            ),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
        child: const Icon(Icons.add),
      ),
    );
  }
}
