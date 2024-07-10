import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_i18n_converter/i18n_converter.dart';

void main() {
  group('I18nConverter', () {
    test('should return language name in autonym by default', () {
      // Default is set to use autonyms
      expect(I18nConverter.getLanguageName('en'), 'English');
      expect(I18nConverter.getLanguageName('es'), 'Español');
      expect(I18nConverter.getLanguageName('fr'), 'Français');
      expect(I18nConverter.getLanguageName('de'), 'Deutsch');
      expect(I18nConverter.getLanguageName('zh'), '中文');
    });

    test('should return language name in English when setUseAutonyms is false',
        () {
      I18nConverter.setUseAutonyms(false);

      expect(I18nConverter.getLanguageName('en'), 'English');
      expect(I18nConverter.getLanguageName('es'), 'Spanish');
      expect(I18nConverter.getLanguageName('fr'), 'French');
      expect(I18nConverter.getLanguageName('de'), 'German');
      expect(I18nConverter.getLanguageName('zh'), 'Chinese');
    });

    test('should return language name in English explicitly', () {
      expect(I18nConverter.getLanguageNameInEnglish('en'), 'English');
      expect(I18nConverter.getLanguageNameInEnglish('es'), 'Spanish');
      expect(I18nConverter.getLanguageNameInEnglish('fr'), 'French');
      expect(I18nConverter.getLanguageNameInEnglish('de'), 'German');
      expect(I18nConverter.getLanguageNameInEnglish('zh'), 'Chinese');
    });

    test('should return language name in autonym explicitly', () {
      expect(I18nConverter.getLanguageNameInAutonym('en'), 'English');
      expect(I18nConverter.getLanguageNameInAutonym('es'), 'Español');
      expect(I18nConverter.getLanguageNameInAutonym('fr'), 'Français');
      expect(I18nConverter.getLanguageNameInAutonym('de'), 'Deutsch');
      expect(I18nConverter.getLanguageNameInAutonym('zh'), '中文');
    });

    test('should return "Unknown Language" for unknown short code', () {
      expect(I18nConverter.getLanguageName('unknown'), 'Unknown Language');
      expect(I18nConverter.getLanguageNameInEnglish('unknown'),
          'Unknown Language');
      expect(I18nConverter.getLanguageNameInAutonym('unknown'),
          'Unknown Language');
    });
  });
}
