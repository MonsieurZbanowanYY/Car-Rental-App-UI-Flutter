import 'package:car_rental_app_ui/data/cars.dart';
import 'package:car_rental_app_ui/widgets/homePage/car.dart';
import 'package:car_rental_app_ui/widgets/homePage/category.dart';
import 'package:flutter/material.dart';

Widget buildMostRented(Size size, ThemeData themeData) {
  return Column(
    children: [
      buildCategory('Most Rented', size, themeData),
      Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.015,
          left: size.width * 0.03,
          right: size.width * 0.03,
        ),
        child: SizedBox(
          height: size.width * 0.55,
          width: cars.length * size.width * 0.5 * 1.03,
          child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: cars.length,
            itemBuilder: (context, i) {
              return buildCar(
                i,
                size,
                themeData,
              );
            },
          ),
        ),
      ),
    ],
  );
}
