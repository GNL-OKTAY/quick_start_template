import 'package:easy_localization/easy_localization.dart';

extension StringLocalization on String {
  String get t => this.tr();
}
