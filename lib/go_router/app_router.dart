import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_english/features/authentication/pages/complete_profile_page.dart';

import 'package:lazy_english/features/authentication/pages/user_info_page.dart';
import 'package:lazy_english/features/authentication/pages/welcome_page.dart';
import 'package:lazy_english/features/challange/pages/challange_page.dart';
import 'package:lazy_english/features/leaderboard/pages/leaderboard_page.dart';
import 'package:lazy_english/features/leaderboard/pages/user_profile_details_page.dart';
import 'package:lazy_english/features/splash/splash_page.dart';
import 'package:lazy_english/features/test_types/match_word_pair.dart/pages/match_word_pair.dart';
import 'package:lazy_english/go_router/bottom_navigation_bar.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator = GlobalKey(debugLabel: 'shell');

final GoRouter bottomNavigationBarRouter = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigator,
  initialLocation: '/word_match',
  routes: [
    GoRoute(
      path: '/word_match',
      builder: (context, state) => const MatchWordPairPage(),
    ),
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashPage(),
      routes: [
        GoRoute(
          path: 'auth_welcome',
          builder: (context, state) => const WelcomePage(),
          routes: [
            GoRoute(
              path: 'auth_user_info',
              builder: (context, state) => const UserInfoPage(),
              routes: [
                GoRoute(
                  path: 'auth_sign_up_completed',
                  builder: (context, state) => const AuthSignUpCompletedPage(),
                ),
              ],
            ),
          ],
        )
      ],
    ),
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
              child: LeaderboardPage(),
            );
          },
          routes: [
            GoRoute(
              path: 'user_profile_details_route',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: UserProfileDetailsPage()),
            ),
          ],
        ),
        GoRoute(
          path: '/challange',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: ChallangePage(),
            );
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
