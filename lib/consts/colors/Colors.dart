
import 'package:flutter/material.dart';

import '../../utils/pref_util.dart';
import '../strings/str_const.dart';

class ColorStyle {
  static const primary = Color(0xfff68c1f);

  // NEW COLOR FOR DARK MODE
  static Color getSecondaryBackground() {
    if (PrefUtil.getValue(StrConst.isDarkMode, false) as bool == false) {
      return const Color(0xfff8f8f8);
    } else {
      return const Color(0xff1a1a1a);
    }
  }

  static Color getSystemBackground() {
    if (PrefUtil.getValue(StrConst.isDarkMode, false) as bool == false) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  static Color getDarkLabel() {
    if (PrefUtil.getValue(StrConst.isDarkMode, false) as bool == false) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }

  static Color getLightLabel() {
    if (PrefUtil.getValue(StrConst.isDarkMode, false) as bool == false) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}