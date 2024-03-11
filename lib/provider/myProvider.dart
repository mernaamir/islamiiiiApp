import 'package:flutter/material.dart';

class myProvider extends ChangeNotifier{
  String languageCode="en";
ThemeMode myTheme=ThemeMode.light;
  changeLanguage(String code){
    languageCode=code;
    notifyListeners();
  }

  changeTheme(ThemeMode mode){
    myTheme=mode;
    notifyListeners();

  }
}