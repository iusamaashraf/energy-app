import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Devicetile extends StatelessWidget {
  const Devicetile({
    Key? key,
    required this.image,
    required this.title,
    required this.unit,
  }) : super(key: key);
  final String image;
  final String title;
  final String unit;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: Get.width * 0.25,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 0,
            offset: Offset(-1, 0),
          ),
        ],
        gradient: const LinearGradient(
          colors: [
            Color(0xff101020),
            Color(0xff101020),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xff131121),
            radius: 15,
            backgroundImage: const AssetImage('assets/images/circle.png'),
            child: SvgPicture.asset(image),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            unit,
            style: GoogleFonts.poppins(
                color: Colors.grey.shade400,
                fontSize: 9,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
