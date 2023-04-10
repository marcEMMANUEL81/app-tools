import 'package:apptools/screens/connectToCanne.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/const.dart';
import '../widgets/inputType.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

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
              addSpace(20),
              Text(
                "Vérification OTP",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              addSpace(20),
              Text(
                "Nous vous avons envoyé un code sur le numéro +225 0797674576",
                style: GoogleFonts.montserrat(
                  height: 2,
                  fontSize: 14,
                  color: textColor,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              addSpace(40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      caseInput(context),
                      caseInput(context),
                      caseInput(context),
                      caseInput(context),
                      caseInput(context),
                      caseInput(context),
                    ],
                  ),
                ),
              ),
              addSpace(30),
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
                        builder: (context) => const ConnectToCanne(),
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
              addSpace(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Vous n'avez pas reçu le code ? ",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
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
