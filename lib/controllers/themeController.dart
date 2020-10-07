import 'package:bde_cesi_nancy/config/configs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeBrightness { Light, Dark, System }
enum ThemeSchool { Cesi, Exia }

class ThemeController extends GetxController {
  ThemeData _currentTheme;
  ThemeBrightness _themeBrightness;
  ThemeSchool _themeSchool;
  Brightness _systemBrightness;
  SharedPreferences _preferences;
  double _durationMultiplier;

  ThemeController({Brightness systemBrightness}) {
    this._systemBrightness = systemBrightness;
  }

  @override
  void onInit() async {
    super.onInit();
    _preferences = await SharedPreferences.getInstance();
    final Map prefs = this._getPreferences();
    this._themeBrightness = prefs["brightness"];
    this._themeSchool = prefs["school"];
    this._durationMultiplier = prefs["duration"];
    this._setTheme();
  }

  ThemeData getTheme() => this._currentTheme;
  bool isDark() => this._themeBrightness == ThemeBrightness.Dark || (this._themeBrightness == ThemeBrightness.System && this._systemBrightness == Brightness.dark);
  bool isLight() => !this.isDark();
  String getSchoolName() => this._themeSchool.toString().split('.')[1];
  ThemeSchool getSchool() => this._themeSchool;
  ThemeBrightness getBrightness() => this._themeBrightness;
  double getDurationMultiplier() => this._durationMultiplier;
  Duration getDuration({@required int milliseconds}) => Duration(milliseconds: (milliseconds * this.getDurationMultiplier()).toInt());

  void toggleSchool() {
    if (this._themeSchool == ThemeSchool.Exia) {
      this._themeSchool = ThemeSchool.Cesi;
    } else if (this._themeSchool == ThemeSchool.Cesi) {
      this._themeSchool = ThemeSchool.Exia;
    }
    this._setTheme();
  }

  void setSchool(ThemeSchool school) {
    if (school != this._themeSchool) {
      this._themeSchool = school;
      this._setTheme();
    }
  }

  void toggleBrightness() {
    this._themeBrightness = this.isDark() ? ThemeBrightness.Light : ThemeBrightness.Dark;
    this._setTheme();
  }

  void setBrightness(ThemeBrightness newBrightness) {
    if (this._themeBrightness != newBrightness) {
      this._themeBrightness = newBrightness;
      this._setTheme();
    }
  }

  void updateSystemBrightness(Brightness brightness) {
    this._systemBrightness = brightness;
    this._setTheme();
  }

  void _setTheme() {
    this._updatePreferences();
    final Brightness brightness = this.isDark() ? Brightness.dark : Brightness.light;

    if (brightness == Brightness.light && this._themeSchool == ThemeSchool.Cesi) {
      this._currentTheme = lightThemeCesi;
    } else if (brightness == Brightness.dark && this._themeSchool == ThemeSchool.Cesi) {
      this._currentTheme = darkThemeCesi;
    } else if (brightness == Brightness.light && this._themeSchool == ThemeSchool.Exia) {
      this._currentTheme = lightThemeExia;
    } else if (brightness == Brightness.dark && this._themeSchool == ThemeSchool.Exia) {
      this._currentTheme = darkThemeExia;
    }
    this.update();
  }

  void setDurationMultiplier(double duration) {
    this._durationMultiplier = duration;
    this._updatePreferences();
    this.update();
  }

  void _updatePreferences() async {
    await this._preferences.setString('_themeBrightness', this._themeBrightness.toString());
    await this._preferences.setString('_themeSchool', this._themeSchool.toString());
    await this._preferences.setDouble('_durationMultiplier', this._durationMultiplier);
  }

  Map _getPreferences() {
    return {
      "brightness": this._preferences.getString('_themeBrightness') != null ? enumFromString(ThemeBrightness.values, this._preferences.getString('_themeBrightness')) : ThemeBrightness.System,
      "school": this._preferences.getString('_themeSchool') != null ? enumFromString(ThemeSchool.values, this._preferences.getString('_themeSchool')) : ThemeSchool.Cesi,
      "duration": this._preferences.getDouble('_durationMultiplier') != null ? _preferences.getDouble('_durationMultiplier') : 1.0,
    };
  }
}

T enumFromString<T>(Iterable<T> values, String value) {
  return values.firstWhere((type) => type.toString() == value, orElse: () => null);
}
