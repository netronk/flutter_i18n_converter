import 'dart:developer';
import 'package:flutter_i18n_converter/flutter_i18n_converter.dart';

void main() {
  const String shortCode = 'en';
  String longCode = I18nConverter.getLanguageName(shortCode); // Output: English

  log(longCode);
}
