import '/global/enums/app_cache.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

@immutable
class ApplicationStart {
  const ApplicationStart._();
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();

    // await DeviceUtility.instance.initPackageInfo();
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );
    // setupDependencies();
    // FirebaseUIAuth.configureProviders(
    //   [
    //     EmailAuthProvider(),
    //     GoogleProvider(clientId: ''),
    //   ],
    // );
    await AppChache.instance.setup();
    // initializeDateFormatting(await findSystemLocale());
    initializeDateFormatting('tr_TR', null);
  }
}
