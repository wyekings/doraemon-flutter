import 'package:doraemon/ui/pages/counter/counter.dart';
import 'package:doraemon/ui/pages/home/home.dart';
import 'package:doraemon/ui/pages/state/state.dart';
import 'package:flutter/material.dart';

class DoraemonApp extends StatelessWidget {
  const DoraemonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Doraemon",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'counter': (context) => const CounterPage(title: 'Counter'),
        // 'get_state': (context) => const GetStatePage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return const HomePage();
        });
      },
      navigatorObservers: [
        DoraemonNavigatorObserver(),
      ],
      // onGenerateRoute: (settings) {
      //   return MaterialPageRoute(builder: (context) {
      //     String? routeName = settings.name;
      //     debugPrint('routeName=$routeName');
      //     switch (routeName) {
      //       case 'get_state':
      //         return const GetStatePage();
      //       default:
      //         return const HomePage();
      //     }
      //     // return const GetStatePage();
      //   });
      // },
    );
  }
}

class DoraemonNavigatorObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    // TODO: implement didPop
    debugPrint('Pop called:${route.settings.name}');
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint('Push called:${route.settings.name}');
    super.didPush(route, previousRoute);
  }
}
