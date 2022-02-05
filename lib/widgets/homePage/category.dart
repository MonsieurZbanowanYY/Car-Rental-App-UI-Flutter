import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Row buildCategory(String text, size, ThemeData themeData) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.03,
          left: size.width * 0.05,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: themeData.secondaryHeaderColor,
            fontWeight: FontWeight.bold,
            fontSize: size.width * 0.055,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.03,
          right: size.width * 0.05,
        ),
        child: Text(
          'View All',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: themeData.primaryColor.withOpacity(0.8),
            fontSize: size.width * 0.04,
          ),
        ),
      ),
    ],
  );
}
