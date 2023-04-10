import 'package:flutter/material.dart';

import '../constants/const.dart';
import '../widgets/sliderPageTemplate.dart';

class GpsWidget extends StatelessWidget {
  const GpsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sliderPageTemplate(
      Image.asset(
        "../assets/images/look3.png",
        height: imageSize,
      ),
      "GPS",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt\nut labore et",
    );
  }
}