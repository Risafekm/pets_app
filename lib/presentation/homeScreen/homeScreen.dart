// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pets_app/presentation/homeScreen/widgets/card_gridview.dart';
import 'package:pets_app/presentation/homeScreen/widgets/widgets_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(onTap: () {}),
      body: Column(
        children: [
          cardTitle(),
          const CardGridView(),
        ],
      ),
    );
  }

  /// card title

  Padding cardTitle() {
    return const Padding(
      padding: EdgeInsets.only(top: 15.0),
      child: Center(
          child: Text(
        'Pets',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      )),
    );
  }
}
