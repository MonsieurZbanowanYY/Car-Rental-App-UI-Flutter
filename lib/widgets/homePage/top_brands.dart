import 'package:car_rental_app_ui/widgets/homePage/brand_logo.dart';
import 'package:car_rental_app_ui/widgets/homePage/category.dart';
import 'package:flutter/material.dart';

Column buildTopBrands(Size size, ThemeData themeData) {
  return Column(
    children: [
      buildCategory('Top Brands', size, themeData),
      Padding(
        padding: EdgeInsets.only(top: size.height * 0.015),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildBrandLogo(
              Image.asset(
                'assets/icons/hyundai.png',
                height: size.width * 0.1,
                width: size.width * 0.15,
                fit: BoxFit.fill,
              ),
              size,
              themeData,
            ),
            buildBrandLogo(
              Image.asset(
                'assets/icons/volkswagen.png',
                height: size.width * 0.12,
                width: size.width * 0.12,
                fit: BoxFit.fill,
              ),
              size,
              themeData,
            ),
            buildBrandLogo(
              Image.asset(
                'assets/icons/toyota.png',
                height: size.width * 0.08,
                width: size.width * 0.12,
                fit: BoxFit.fill,
              ),
              size,
              themeData,
            ),
            buildBrandLogo(
              Image.asset(
                'assets/icons/bmw.png',
                height: size.width * 0.12,
                width: size.width * 0.12,
                fit: BoxFit.fill,
              ),
              size,
              themeData,
            ),
          ],
        ),
      ),
    ],
  );
}
