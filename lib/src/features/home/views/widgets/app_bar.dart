import 'package:bmi/style/string_app.dart';
import 'package:bmi/style/text_style.dart';
import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    title: Text(
      StringApp.appBarTitle,
      style: appBarStyle(),
    ),
    centerTitle: true,
  );
}
