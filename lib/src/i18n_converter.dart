import 'language_map.dart';

class I18nConverter {
  static bool _useAutonyms = true;

  /// Set whether to use autonyms (language names in their own languages) by default
  static void setUseAutonyms(bool useAutonyms) {
    _useAutonyms = useAutonyms;
  }

  /// Get the language name in the configured default language
  static String getLanguageName(String shortCode) {
    if (_useAutonyms) {
      return getLanguageNameInAutonym(shortCode);
    } else {
      return getLanguageNameInEnglish(shortCode);
    }
  }

  /// Get the language name in English
  static String getLanguageNameInEnglish(String shortCode) {
    return languageMapEnglish[shortCode] ?? 'Unknown Language';
  }

  /// Get the language name in its own language (autonym)
  static String getLanguageNameInAutonym(String shortCode) {
    return languageMapAutonyms[shortCode] ?? 'Unknown Language';
  }
}
