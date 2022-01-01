import 'package:flutter/material.dart';

Padding buildBrandLogo(Widget image, Size size, bool isDarkMode) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: size.width * 0.03,
    ),
    child: SizedBox(
      height: size.width * 0.18,
      width: size.width * 0.18,
      child: Container(
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.white.withOpacity(0.05) : Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        child: Center(
          child: image,
        ),
      ),
    ),
  );
}
