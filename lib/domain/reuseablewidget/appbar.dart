// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pets_app/presentation/homeScreen/widgets/Icon_widget.dart';

class MyAppBar extends StatelessWidget {
  VoidCallback onTap;
  MyAppBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.lightGreen.shade400,
        leading: IconWidget(onTap: onTap),
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 46,
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/logo.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'SaleBay',
                  style: GoogleFonts.aBeeZee(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ));
  }
}
