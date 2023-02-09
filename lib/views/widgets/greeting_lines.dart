import 'package:energy_app/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GreetingLines extends StatelessWidget {
  const GreetingLines({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome To ',
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w500),
        ),
        Row(
          children: [
            Text(
              'Your ',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
            ),
            Image.asset(
              IconClass.logo,
              height: Get.height * 0.05,
            )
          ],
        ),
      ],
    );
  }
}
