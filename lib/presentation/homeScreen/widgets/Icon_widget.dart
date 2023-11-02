// ignore_for_file: file_names

import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(left: 8),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(2, 2),
                spreadRadius: 1,
                blurRadius: 10),
          ]),
      child:
          const Center(child: Icon(Icons.arrow_back_ios, color: Colors.green)),
    );
  }
}
