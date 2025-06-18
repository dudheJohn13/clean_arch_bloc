import 'package:flutter_clean_architecture/features/user/presentation/screens/user_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/user/presentation/screens/about_us_screen.dart';



final GoRouter router = GoRouter(
  initialLocation: '/singn',
  routes: [
    GoRoute(
      name: '/signIn',
      path: '/signIn',
      redirect: (context, state) {
// final isLoggedIn = ;
// return isLoggedIn ? null :'/sigIn';
},
      builder: (context, state) => AuthScreen(),
      routes: <RouteBase>[
        GoRoute(
            path: 'forgotPassword',
            builder: (context, state) => ForgotPasswordScreen(),
            routes: [
            ]
        ),

        GoRoute(
            path: 'changePassword',
            builder: (context, state) => ChangePassword(),
            routes: [
            ]
        ),
        GoRoute(
            path: 'signUp',
            builder: (context, state) => SignInScreen(),
            routes: []
        ),
      ],
    ),

    GoRoute(path: '/dashboard',
        redirect: (context, state) {
       // final isLoggedIn = ;
       // return isLoggedIn ? null :'/sigIn';
        },
        builder: (context, state) => AboutUsScreen()),
  ],
);
