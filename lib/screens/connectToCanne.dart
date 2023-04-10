// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/const.dart';

class ConnectToCanne extends StatefulWidget {
  const ConnectToCanne({Key? key}) : super(key: key);

  @override
  State<ConnectToCanne> createState() => _ConnectToCanneState();
}

bool isAvailable = false;

class _ConnectToCanneState extends State<ConnectToCanne> {
  
  @override
  void initState() {
    super.initState();
    getCanneUser();
  }

  void getCanneUser() {
    Future.delayed(const Duration(seconds: 7), () {
      setState(() {
        isAvailable = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "../assets/images/canneLogo.png",
              height: imageSize,
            ),
            addSpace(40),
            Text(
              "Connectez vous à une canne",
              style: GoogleFonts.montserrat(
                fontSize: 20,
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            addSpace(30),
            Text(
              "Appuyer sur le bouton latérale de la canne pour vous connecter à la canne",
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            addSpace(80),
            isAvailable
                ? Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor,
                    ),
                    child: Text(
                      "Canne de Papa Roger",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                : Center(
                    child: Text(
                      "En cours de recherche",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
            addSpace(110),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                onPressed: () {},
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
