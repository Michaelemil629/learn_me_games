import 'package:flutter/material.dart';

class Items {
  final String name;
  final String image;
  final String val;
  bool accept;
  Items(
      {required this.name,
      required this.val,
      required this.image,
      this.accept = false});
}
