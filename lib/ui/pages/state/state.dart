import 'package:doraemon/ui/pages/state/mixed_state.dart';
import 'package:doraemon/ui/pages/state/parent_contained_state.dart';
import 'package:doraemon/ui/pages/state/self_contained_state.dart';
import 'package:flutter/material.dart';

class GetStatePage extends StatelessWidget {
  const GetStatePage({super.key});

  static final GlobalKey<ScaffoldState> _scafoldGlobalState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldGlobalState,
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
          mainAxisAlignment: MainAxisAlignment.start,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) {
                          return GetStatePage();
                        },
                        settings: RouteSettings(arguments: 'args')),
                  );
                  ScaffoldState? state = context.findAncestorStateOfType();
                  state?.openDrawer();
                },
                child: const Text('Open Drawer by findAncestorState'),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return GetStatePage();
                  }));
                  _scafoldGlobalState.currentState?.openDrawer();
                },
                child: const Text('Open Drawer by Global key')),
            const SelfContainedStateWidget(),
            const Divider(
              thickness: 10.0,
              color: Colors.white,
            ),
            const ParentContainedStateWidget(),
            const Divider(
              thickness: 10.0,
              color: Colors.white,
            ),
            const MixedStateWidget(),
          ],
        ),
      ),
    );
  }
}
