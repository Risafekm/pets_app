import 'package:flutter/material.dart';

BoxDecoration decorationDetails() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
          offset: const Offset(7, 7),
          color: Colors.grey.shade400,
          blurRadius: 16,
          spreadRadius: 0,
          blurStyle: BlurStyle.normal),
    ],
  );
}
