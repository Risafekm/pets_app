// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pets_app/presentation/homeScreen/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1200), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 300,
              width: 300,
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green),
              child: Center(
                child: Image.asset('assets/logo.png'),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Center(
              child: Text(
            'Pets shop',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
        ],
      ),
    );
  }
}
