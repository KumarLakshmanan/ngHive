import 'package:flutter/material.dart';
import 'home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'intro.dart';
bool prefValue=true;
void main() async {
  final pref=await SharedPreferences.getInstance();
  prefValue=pref.getBool("introscreen") ?? true;
  runApp(new MaterialApp(
    title: "OnBoarding_Scr",
    home:prefValue ? introScr() : home(),
    //home: home(),
  ));
}
