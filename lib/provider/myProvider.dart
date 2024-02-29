import 'package:flutter/material.dart';

class myProvider extends ChangeNotifier{
  String languageCode="en";

  changeLanguage(String code){
    languageCode=code;
    notifyListeners();
  }
}