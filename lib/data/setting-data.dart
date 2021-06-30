import 'package:flutter/material.dart';

class SettingItem {
  String id;
  Color backgroundColor;
  Color textColor;

  SettingItem(this.id, this.backgroundColor, this.textColor);

  String getMainImage() {
    return 'assets/story/' + this.id + 'a.png';
  }

  String getParallaxImage() {
    return 'assets/story/' + this.id + 'b.png';
  }
}

class SettingData {
  static final Map<String, SettingItem> settingData = {
    "lighthouse": SettingItem(
      "lighthouse1",
      Color.fromRGBO(23, 32, 56, 1),
      Color.fromRGBO(79, 143, 186, 1),
    ),
    "park": SettingItem(
      "park1",
      Color.fromRGBO(25, 51, 45, 1),
      Color.fromRGBO(168, 202, 88, 1),
    ),
    "forest": SettingItem(
      "forest1",
      Color.fromRGBO(65, 29, 49, 1),
      Color.fromRGBO(207, 87, 60, 1),
    ),
  };
}
