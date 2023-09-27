// ignore_for_file: strict_raw_type

import 'package:flutter/material.dart';

class NavigationRoute {
  NavigationRoute._();
  static final NavigationRoute _shared = NavigationRoute._();
  static NavigationRoute get shared => _shared;

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      // case KRoute.homePage:
      //   return _getRoute(const HomePage());
      // case KRoute.welcomePage:
      //   return _getRoute(const WelcomePage());
      // case KRoute.splashPage:
      //   return _getRoute(const SplashPage());
      // case KRoute.authRootPage:
      //   return _getRoute(const AuthRootPage());
      // case KRoute.loginPage:
      //   return _getRoute(const LoginScreen());
      // case KRoute.marketHomePage:
      //   return _getRoute(const MarketHomePage());
      // case KRoute.dashboardPage:
      //   return _getRoute(const DashboardScreen());
      // case KRoute.bookingCalendar:
      //   return _getRoute(const BookingCalendarDemoApp());
      // case KRoute.registerPage:
      //   return _getRoute(const RegisterPage());
      // case KRoute.routPage:
      //   return _getRoute(const MainRoutePage());
      // case KRoute.previewPage:
      //   return _getRoute(const PreviewPage());
      // case KRoute.profilePage:
      //   return _getRoute(const ProfilePage());
      // case KRoute.splashPage:
      //   return _getRoute(const SplashPage());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Center(
                    child: Text(
                      'Root name ${args.name} Not Found.',
                      // style: context.textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
    }
  }

  PageRoute _getRoute(Widget page) => MaterialPageRoute(
        builder: (context) => page,
      );
}
