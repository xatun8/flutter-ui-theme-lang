import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;
  late Map<String, String> _localizedStrings;

  AppLocalizations(this.locale);

  static final LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  Future<bool> load() async {
    final jsonString = await rootBundle.loadString(
      'assets/languages/${locale.languageCode}.json',
    );
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map(
      (key, value) => MapEntry(key, value.toString()),
    );
    return true;
  }

  String t(String key) => _localizedStrings[key] ?? key;

  // Helpers
  String get home => t('home');
  String get welcome => t('welcome');
  String get profile => t('profile');
  String get language => t('language');
  String get chooseLanguage => t('choose_language');
  String get homeMessage => t('homeMessage');
  String get dailyTips => t('dailyTips');
  String get dailyTipsDesc => t('dailyTipsDesc');
  String get newsUpdate => t('newsUpdate');
  String get newsUpdateDesc => t('newsUpdateDesc');
  String get exploreMore => t('exploreMore');
  String get exploreMoreDesc => t('exploreMoreDesc');
}

// Private delegate
class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['az', 'en', 'ru'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>
      false;
}
