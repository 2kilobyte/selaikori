import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

setCurrentLanguage({required languageIndex}) async {
  final SharedPreferences prefs = await _prefs;
  prefs.setBool('lang', languageIndex == 0 ? true : false);
}

Future<bool> getCurrentLanguage() async {
  final SharedPreferences prefs = await _prefs;
  bool? lang = prefs.getBool('lang');
  // Assuming you want to return true if a language is set and false otherwise
  // ignore: prefer_if_null_operators
  return lang != null ? lang : true;
}
