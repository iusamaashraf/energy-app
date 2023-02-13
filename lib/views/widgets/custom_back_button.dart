import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/root/root_page.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offAll(() => const RootPage());
      },
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
