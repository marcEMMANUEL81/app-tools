import 'package:flutter/material.dart';
import '../constants/const.dart';
import '../widgets/sliderPageTemplate.dart';

class Moving extends StatelessWidget {
  const Moving({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sliderPageTemplate(
      Image.asset(
        "../assets/images/look1.png",
        height: imageSize,
      ),
      "Moving",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt\nut labore et",
    );
  }
}
