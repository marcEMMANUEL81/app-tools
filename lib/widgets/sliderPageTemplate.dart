// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/const.dart';

Widget sliderPageTemplate(Image image, String title, String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      image,
      const SizedBox(
        height: 15,
      ),
      Text(
        title,
        style: GoogleFonts.montserrat(
          fontSize: 24,
          color: secondaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 12,
          color: secondaryColor,
          fontWeight: FontWeight.normal,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
