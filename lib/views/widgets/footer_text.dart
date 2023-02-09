import 'package:energy_app/constants/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterText extends StatelessWidget {
  const FooterText({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.onTap,
  }) : super(key: key);
  final String firstText;
  final String secondText;
  final GestureRecognizer? onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          TextSpan(
            recognizer: onTap,
            text: secondText,
            style: GoogleFonts.poppins(
                color: ColorClass.lightGreenColor,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
