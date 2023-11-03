import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets_app/presentation/homeScreen/widgets/Icon_widget.dart';

/// appbar widget
AppBar appBar({required VoidCallback onTap}) {
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
