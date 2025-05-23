import 'package:app/presentation/add_user/add_user_screen.dart';
import 'package:app/presentation/add_user/screen/add_new_user_screen.dart';
import 'package:app/presentation/events/event_screen.dart';
import 'package:app/presentation/events/screens/event_detail_screen.dart';
import 'package:app/presentation/events/screens/event_overview_screen.dart';
import 'package:app/presentation/home/home_screen.dart';
import 'package:app/presentation/remarks/remarks_screen.dart';
import 'package:app/presentation/remarks/screens/remark_event_list_screen.dart';
import 'package:app/presentation/transaction/screens/payment_list_screen.dart';
import 'package:app/presentation/transaction/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/presentation/main_screen/main_screen.dart';
import 'package:app/router/router_path.dart';
import 'package:app/router/transitions.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    initialLocation: ScreenPath.splash,
    redirect: _handleRedirect,
    redirectLimit: 10,
    navigatorKey: _rootNavigatorKey,
    routes: [
      /// Splash Screen
      GoRoute(
        path: ScreenPath.splash,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: Container(),
            transitionsBuilder: useNavChangeTransition,
          );
        },
      ),

      ///Navigation shell
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ScreenMain(
            key: state.pageKey,
            child: child,
          );
        },
        routes: [
          /// Home
          GoRoute(
            path: ScreenPath.home,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) {
              return const CustomTransitionPage(
                child: ScreenHome(),
                transitionsBuilder: useNavChangeTransition,
              );
            },
          ),

          /// Events
          GoRoute(
            path: ScreenPath.events,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) {
              return const CustomTransitionPage(
                child: EventScreen(),
                transitionsBuilder: useNavChangeTransition,
              );
            },
            routes: [
              GoRoute(
                path: 'event-detail',
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (context, state) {
                  return const CustomTransitionPage(
                    child: EventDetailScreen(),
                    transitionsBuilder: useNavChangeTransition,
                  );
                },
              ),
              GoRoute(
                path: 'event-overview',
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (context, state) {
                  return const CustomTransitionPage(
                    child: EventOverviewScreen(),
                    transitionsBuilder: useNavChangeTransition,
                  );
                },
              ),
            ],
          ),

          /// Transaction
          GoRoute(
            path: ScreenPath.transaction,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) {
              return const CustomTransitionPage(
                child: TransactionScreen(),
                transitionsBuilder: useNavChangeTransition,
              );
            },
            routes: [
              GoRoute(
                path: 'payment-list',
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (context, state) {
                  return const CustomTransitionPage(
                    child: UserPaymentListScreen(),
                    transitionsBuilder: useNavChangeTransition,
                  );
                },
              ),
            ],
          ),

          /// Add-User
          GoRoute(
            path: ScreenPath.addUser,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) {
              return const CustomTransitionPage(
                child: AddUserScreen(),
                transitionsBuilder: useNavChangeTransition,
              );
            },
            routes: [
              GoRoute(
                path: 'new-user',
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (context, state) {
                  return const CustomTransitionPage(
                    child: AddNewUserScreen(),
                    transitionsBuilder: useNavChangeTransition,
                  );
                },
              ),
            ],
          ),

          /// Remarks
          GoRoute(
            path: ScreenPath.remarks,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) {
              return const CustomTransitionPage(
                child: RemarksScreen(),
                transitionsBuilder: useNavChangeTransition,
              );
            },
            routes: [
              GoRoute(
                path: 'event-list',
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (context, state) {
                  return const CustomTransitionPage(
                    child: RemarkEventEventListScreen(),
                    transitionsBuilder: useNavChangeTransition,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

String? _initialDeepLink;
String? get initialDeepLink => _initialDeepLink;

String? _handleRedirect(BuildContext context, GoRouterState state) {
  return null;
}
