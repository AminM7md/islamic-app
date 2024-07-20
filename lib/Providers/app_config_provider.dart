import "package:flutter/material.dart";

class AppConfigProvider extends ChangeNotifier{
String appLanguage = 'en';
ThemeMode appTheme = ThemeMode.light;

void changeLanguage (String newlanguage){
  if(appLanguage == newlanguage){
    return ;
  };
  appLanguage = newlanguage ;
  notifyListeners();
}
void changeTheme (ThemeMode newTheme){
  if(appTheme == newTheme){
    return ;
  };
  appTheme = newTheme ;
  notifyListeners();
}

bool isDarkMode(){
  return appTheme == ThemeMode.dark ;
}

}
