import 'package:flutter/material.dart';

class SettingItem {
  String id;
  Color color;

  SettingItem(this.id, this.color);

  String getMainImage() {
    return 'assets/story/' + this.id + 'a.png';
  }

  String getParallaxImage() {
    return 'assets/story/' + this.id + 'b.png';
  }
}

class SettingData {
  static final Map<String, SettingItem> settingData = {
    "lighthouse": SettingItem("lighthouse1", Color.fromRGBO(229, 213, 178, 1)),
    "park": SettingItem("park1", Color.fromRGBO(29, 51, 45, 1)),
    "forest": SettingItem("forest1", Color.fromRGBO(62, 29, 49, 1)),
  };
}
