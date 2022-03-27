import 'package:flutter/material.dart';

import '../view/screens/home/homeScreens/home_screen.dart';
import '../view/screens/home/homeScreens/news_screen.dart';
import '../view/screens/home/homeScreens/settings_screen.dart';

class HomeProvider with ChangeNotifier {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    NewsScreen(),
    SettingsScreen(),
  ];
  List<String> title = ['Home', 'News', 'Settings'];

  void changeBottomNav(int index) {

      currentIndex = index;
      print(currentIndex);
      notifyListeners();

  }
}
