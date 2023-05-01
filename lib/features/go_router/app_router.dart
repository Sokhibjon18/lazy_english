import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'bottom_navigation_bar.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigator,
  initialLocation: '/home',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigator,
      builder: (context, state, child) {
        return BottomNavigationBarPage(body: child, key: state.pageKey);
      },
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
                child: Scaffold(
              body: Center(child: Text('home')),
            ));
          },
        ),
        GoRoute(
          path: '/leaderboard',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
                child: Scaffold(
              body: Center(child: Text('leaderbord')),
            ));
          },
        ),
        GoRoute(
          path: '/challange',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
                child: Scaffold(
              body: Center(child: Text('challange')),
            ));
          },
        ),
        GoRoute(
          path: '/premium',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
                child: Scaffold(
              body: Center(child: Text('premium')),
            ));
          },
        ),
        GoRoute(
          path: '/account',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
                child: Scaffold(
              body: Center(child: Text('account')),
            ));
          },
        )
      ],
    ),
  ],
);
