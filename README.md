# Flutter I18n Converter

[![pub package](https://img.shields.io/pub/v/flutter_i18n_converter.svg)](https://pub.dev/packages/flutter_i18n_converter)
[![Flutter Analysis](https://github.com/netronk/flutter_i18n_converter/actions/workflows/flutter.yml/badge.svg)](https://github.com/netronk/flutter_i18n_converter/actions/workflows/flutter.yml)
[![Last Commits](https://img.shields.io/github/last-commit/netronk/flutter_i18n_converter?logo=git&logoColor=white)](https://github.com/netronk/flutter_i18n_converter/commits/main)
[![Pull Requests](https://img.shields.io/github/issues-pr/netronk/flutter_i18n_converter?logo=github&logoColor=white)](https://github.com/netronk/flutter_i18n_converter/pulls)
[![Code size](https://img.shields.io/github/languages/code-size/netronk/flutter_i18n_converter?logo=github&logoColor=white)](https://github.com/netronk/flutter_i18n_converter)
[![GitHub License](https://img.shields.io/github/license/netronk/flutter_i18n_converter?style=flat&logo=open-source-initiative&logoColor=green)](https://github.com/netronk/flutter_i18n_converter/blob/main/LICENSE)

Flutter I18n Converter is a simple and lightweight library to convert language short codes (like `en` or `en-US`) to their respective long names (like `English` or `English (United States)`).

## Features

- Convert language short codes to their long names in English.
- Convert language short codes to their long names in their own language (autonyms).
- Support for regional variations (e.g., `en-US`, `fr-CA`).
- Configurable to use either English or autonyms as default.

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_i18n_converter: ^1.0.0
```

then run:

```bash
$ flutter pub get
```

or

```bash
flutter pub add flutter_i18n_converter
```

## Usage

### Basic Usage

```dart
import 'package:flutter_i18n_converter/flutter_i18n_converter.dart';

void main() {
  // Get the language name in the default language (autonym)
  print(I18nConverter.getLanguageName('en')); // Output: English
  print(I18nConverter.getLanguageName('es')); // Output: Español

  // Get the language name in English
  print(I18nConverter.getLanguageNameInEnglish('fr')); // Output: French
  print(I18nConverter.getLanguageNameInEnglish('zh-Hans')); // Output: Chinese (Simplified)

  // Get the language name in autonym
  print(I18nConverter.getLanguageNameInAutonym('de')); // Output: Deutsch
  print(I18nConverter.getLanguageNameInAutonym('pt-BR')); // Output: Português (Brasil)
}
```

### Configuration (Changing Default Behavior)

By default, I18nConverter returns the language name in its own language (autonym). You can change this to always return the language name in English:

```dart
import 'package:flutter_i18n_converter/flutter_i18n_converter.dart';

void main() {
  I18nConverter.setUseAutonyms(false);

  print(I18nConverter.getLanguageName('en')); // Output: English
  print(I18nConverter.getLanguageName('es')); // Output: Spanish
}
```

## Contribution

Contributions are welcome! If you have any suggestions or improvements, please create an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
