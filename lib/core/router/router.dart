import 'package:flutter_clean_architecture/features/user/presentation/screens/user_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/user/presentation/screens/about_us_screen.dart';


scenario 1 :
launch -> check logged in or not -> if logged in -> navigate to dashbhoard

if not
 navigate to login


scenario 2:
user is in dashboard

make the initial api -> if success show the data else
  it will 401 if token expired

if api throws 401 do token refresh logic here
and continue the existing the api call.

tokenInterceptor.


if refresh also falis
navigate to login screen





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
