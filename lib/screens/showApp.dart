// ignore_for_file: file_names
import 'package:apptools/constants/const.dart';
import 'package:apptools/screens/howConnect.dart';
import 'package:apptools/scrollPages/chat.dart';
import 'package:apptools/scrollPages/gps.dart';
import 'package:apptools/scrollPages/moving.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowApp extends StatelessWidget {
  ShowApp({Key? key}) : super(key: key);

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: pagePadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: PageView(
                controller: _controller,
                children: const [
                  Moving(),
                  ChatWidget(),
                  GpsWidget(),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: primaryColor,
                dotColor: textColor,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 16,
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HowConnect(),
                      ),
                    );
                },
                child: Text(
                  "Continuer",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: lightColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
