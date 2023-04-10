import 'package:flutter/material.dart';

import '../constants/const.dart';
import '../widgets/sliderPageTemplate.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sliderPageTemplate(
      Image.asset(
        "../assets/images/look2.png",
        height: imageSize,
      ),
      "Chat",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt\nut labore et",
    );
  }
}