// ignore_for_file: file_names

import 'package:apptools/screens/phoneNumber.dart';
import 'package:apptools/screens/signIn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/const.dart';
import '../widgets/inputType.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "../assets/images/signIn.png",
                height: imageSize,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Remplissez les champs ci dessous",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InputTemlate(
                      type: "text",
                      title: "Votre nom",
                      size: MediaQuery.of(context).size.width * 0.32,
                      placeholder: "Papa",
                    ),
                    InputTemlate(
                      type: "text",
                      title: "Votre prénom",
                      size: MediaQuery.of(context).size.width * 0.55,
                      placeholder: "Roger",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InputTemlate(
                type: "text",
                title: "Votre email",
                size: MediaQuery.of(context).size.width,
                placeholder: "paparoger@gmail.com",
              ),
              const SizedBox(
                height: 30,
              ),
              InputTemlate(
                type: "password",
                title: "Votre mot de passe",
                size: MediaQuery.of(context).size.width,
                placeholder: "",
              ),
              const SizedBox(
                height: 30,
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
                        builder: (context) => const PhoneNumber(),
                      ),
                    );
                  },
                  child: Text(
                    "Continuer",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: lightColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Vous avez déjà un compte ? ",
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
                          builder: (context) => const SignIn(),
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
      ),
    );
  }
}
