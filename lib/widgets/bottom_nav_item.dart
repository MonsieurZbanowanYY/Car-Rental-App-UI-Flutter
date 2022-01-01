import 'package:flutter/material.dart';

BottomNavigationBarItem buildBottomNavItem(
    IconData icon, bool isDarkMode, Size size) {
  return BottomNavigationBarItem(
    icon: SizedBox(
      height: size.width * 0.12,
      width: size.width * 0.12,
      child: Container(
        decoration: BoxDecoration(
          color: isDarkMode
              ? Colors.white.withOpacity(0.05)
              : Colors.black.withOpacity(0.05),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        child: Icon(
          icon,
        ),
      ),
    ),
    label: '',
  );
}
