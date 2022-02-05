import 'dart:math';

import 'package:car_rental_app_ui/data/cars.dart';
import 'package:car_rental_app_ui/pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

Padding buildCar(int i, Size size, ThemeData themeData) {
  return Padding(
    padding: EdgeInsets.only(
      right: size.width * 0.03,
    ),
    child: Center(
      child: SizedBox(
        height: size.width * 0.55,
        width: size.width * 0.5,
        child: Container(
          decoration: BoxDecoration(
            color: themeData.cardColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.02,
            ),
            child: InkWell(
              onTap: () {
                Get.to(DetailsPage(
                  carImage: cars[i]['carImage'],
                  carClass: cars[i]['carClass'],
                  carName: cars[i]['carName'],
                  carPower: cars[i]['carPower'],
                  people: cars[i]['people'],
                  bags: cars[i]['bags'],
                  carPrice: cars[i]['carPrice'],
                  carRating: cars[i]['carRating'],
                  isRotated: cars[i]['isRotated'],
                ));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: cars[i]['isRotated']
                          ? Image.asset(
                              cars[i]['carImage'],
                              height: size.width * 0.25,
                              width: size.width * 0.5,
                              fit: BoxFit.contain,
                            )
                          : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(pi),
                              child: Image.asset(
                                cars[i]['carImage'],
                                height: size.width * 0.25,
                                width: size.width * 0.5,
                                fit: BoxFit.contain,
                              ),
                            ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Text(
                      cars[i]['carClass'],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: themeData.secondaryHeaderColor,
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    cars[i]['carName'],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: themeData.secondaryHeaderColor,
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '${cars[i]['carPrice']}\$',
                        style: GoogleFonts.poppins(
                          color: themeData.secondaryHeaderColor,
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '/per day',
                        style: GoogleFonts.poppins(
                          color: themeData.primaryColor.withOpacity(0.8),
                          fontSize: size.width * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          right: size.width * 0.025,
                        ),
                        child: SizedBox(
                          height: size.width * 0.1,
                          width: size.width * 0.1,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xff3b22a1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10,
                                ),
                              ),
                            ),
                            child: const Icon(
                              UniconsLine.credit_card,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
