import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';

import 'package:quick_start_template/core/helpers/screen_util_helper/screen_util.dart';
import 'package:quick_start_template/global/initialize/application_start.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/helpers/language_helper/language_helper.dart';
import 'core/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() async {
  // Intl.defaultLocale =
  //     'tr_TR'; // Kullanmak istediğiniz dil ve bölgeyi ayarlayın.
  await ApplicationStart.init();

  runApp(
    LanguageHelper.setupLocales(
      const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilHelper.screenUtilInit(
      MaterialApp(
        title: 'avare market',
        theme: AppTheme.light,
        // initialRoute: KRoute.splashPage,
        // onGenerateRoute: NavigationRoute.shared.generateRoute,
        // navigatorKey: NavigationService.shared.navigatorKey,
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        scrollBehavior: CustomScrollBehaviour(),
        debugShowCheckedModeBanner: false,
        // home: const ProfilPage(),
      ),
    );
  }
}

class CustomScrollBehaviour extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
