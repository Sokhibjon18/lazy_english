import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_english/features/authentication/pages/complete_profile_page.dart';

import 'package:lazy_english/features/authentication/pages/user_info_page.dart';
import 'package:lazy_english/features/authentication/pages/welcome_page.dart';
import 'package:lazy_english/features/challange/pages/challange_page.dart';
import 'package:lazy_english/features/comleted_page/completed_page.dart';
import 'package:lazy_english/features/leaderboard/pages/leaderboard_page.dart';
import 'package:lazy_english/features/leaderboard/pages/user_profile_details_page.dart';
import 'package:lazy_english/features/splash/splash_page.dart';
import 'package:lazy_english/features/test_types/find_meaning_of_sentence/page/find_meaning_page.dart';
import 'package:lazy_english/features/test_types/match_word_pair.dart/pages/match_word_pair.dart';
import 'package:lazy_english/features/test_types/sentence_match/loading_page.dart';
import 'package:lazy_english/features/test_types/sentence_match/second_page.dart';
import 'package:lazy_english/features/test_types/voice_match/pages/voice_match_page.dart';
import 'package:lazy_english/go_router/bottom_navigation_bar.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator = GlobalKey(debugLabel: 'shell');

GoRouter getRouter(key) => GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigator,
      initialLocation: '/splash',
      routes: [
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
              routes: [
                GoRoute(
                  path: 'quiz_king',
                  parentNavigatorKey: _rootNavigator,
                  builder: (context, state) => const LoadingPage(),
                ),
                GoRoute(
                  path: 'sentence_match_page',
                  parentNavigatorKey: _rootNavigator,
                  builder: (context, state) => const SentenceMatchPage(),
                ),
                GoRoute(
                  path: 'voice_match',
                  parentNavigatorKey: _rootNavigator,
                  builder: (context, state) => const VoiceMatchPage(),
                ),
                GoRoute(
                  path: 'find_meaning',
                  parentNavigatorKey: _rootNavigator,
                  builder: (context, state) => const FindMeaningOfSentance(),
                ),
                GoRoute(
                  path: 'match_words',
                  parentNavigatorKey: _rootNavigator,
                  builder: (context, state) => const MatchWordPairPage(),
                ),
                GoRoute(
                  path: 'lesson_completed',
                  parentNavigatorKey: _rootNavigator,
                  builder: (context, state) => const CompletedPage(),
                ),
              ],
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
