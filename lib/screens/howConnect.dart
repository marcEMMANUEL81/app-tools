// ignore_for_file: file_names

import 'package:apptools/constants/const.dart';
import 'package:apptools/screens/logIn.dart';
import 'package:apptools/screens/signIn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

import '../widgets/connectionButton.dart';

class HowConnect extends StatelessWidget {
  const HowConnect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: Container(
        padding: pagePadding,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "../assets/images/signIn.png",
              height: imageSize,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  connectionButton(
                    "../assets/images/google.png",
                    "Se connecter avec Google",
                    context, 
                    null,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  connectionButton(
                    "../assets/images/apple.png",
                    "Se connecter avec Apple",
                    context, 
                    null,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ou",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  connectionButton(
                    "../assets/images/mail.png",
                    "Se connecter avec l'email",
                    context,
                    const SignIn(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Text(
                  "Vous n'avez pas de compte ? ",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogIn(),
                      ),
                    );
                  },
                  child: Text(
                    "Cliquez ici !",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
