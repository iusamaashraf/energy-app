import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);
  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.06,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: const LinearGradient(
            colors: [
              Color(0xff2DDF93),
              Color(0xff51FFB5),
            ],
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
        ]),
      ),
    );
  }
}
