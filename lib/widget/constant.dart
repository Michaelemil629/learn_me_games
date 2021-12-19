import 'package:flutter/material.dart';

// padding
const paddingW = EdgeInsets.symmetric(horizontal: 20.0);

// colors
const lightBlue = Color(0xffdbf0f1);
const amber = Colors.amber;
const white = Colors.white;
const black45 = Colors.black45;
const black = Colors.black;
const red = Colors.red;
const transparent = Colors.transparent;

// fonts
const fontSize30 = 30.0;
const fontSize26 = 26.0;
const fontSize20 = 20.0;
const fontSize14 = 14.0;
const fontSize12 = 12.0;

// font family
const fontFamily = 'circe';

// font weight
const fontWeight400 = FontWeight.w400;
const fontWeight700 = FontWeight.w700;

// const icon size
const iconSize = 30.0;

// text field style
const textInputDecoration = InputDecoration(
  hintStyle: TextStyle(
    fontSize: fontSize14,
  ),
  fillColor: lightBlue,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: black,
      width: 2.0,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.indigo,
      width: 2.0,
    ),
  ),
);
