import 'package:flutter/material.dart';

/// petCardDecoration

BoxDecoration containerDeroration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
          offset: const Offset(5, 5),
          color: Colors.grey.shade400,
          blurRadius: 16,
          spreadRadius: 0,
          blurStyle: BlurStyle.normal),
    ],
  );
}

/// circularAvatarDecoration

BoxDecoration circleAvatarDecoration(int index, {required String image}) {
  return BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.grey,
    image: DecorationImage(
      fit: BoxFit.cover,
      image: NetworkImage(image),
    ),
  );
}
