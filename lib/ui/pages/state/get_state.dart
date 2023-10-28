import 'package:flutter/material.dart';

class GetStatePage extends StatelessWidget {
  const GetStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get State'),
      ),
      drawer: const Drawer(
        child: Column(
          children: [Text('drawer')],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text('SnackBar')));
                },
                child: const Text('Show SnackBar'),
              );
            }),

            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text('Open Drawer by Scaffold.Of'),
              );
            }),

            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  ScaffoldState? state = context.findAncestorStateOfType();
                  state?.openDrawer();
                },
                child: const Text('Open Drawer by findAncestorState'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
