import 'dart:ui';

enum Localization {
  en(locale: Locale('en', 'US')),
  kr(locale: Locale('ko', 'KR'));

  const Localization({required this.locale});

  final Locale locale;
}
