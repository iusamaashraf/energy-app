import 'package:energy_app/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LastMothWinnerRow extends StatelessWidget {
  const LastMothWinnerRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              height: Get.height * 0.1,
              width: Get.width * 0.15,
              decoration: const BoxDecoration(
                color: Color(0xff3DEDA2),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '01',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.007),
            Row(
              children: [
                Text(
                  'Won 1500',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(width: 5),
                SvgPicture.asset(IconClass.won)
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xff393953),
                  backgroundImage: AssetImage('assets/images/men.png'),
                ),
                const SizedBox(width: 5),
                Text(
                  'Joe',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: Get.height * 0.1,
              width: Get.width * 0.15,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/second.png'))),
              child: Center(
                child: Text(
                  '02',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.007),
            Row(
              children: [
                Text(
                  'Won 1000',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(width: 5),
                SvgPicture.asset(IconClass.won)
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xff393953),
                  backgroundImage: AssetImage('assets/images/men.png'),
                ),
                const SizedBox(width: 5),
                Text(
                  'Mark F.',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: Get.height * 0.1,
              width: Get.width * 0.15,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/third.png'))),
              child: Center(
                child: Text(
                  '03',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.007),
            Row(
              children: [
                Text(
                  'Won 800',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(width: 5),
                SvgPicture.asset(IconClass.won)
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xff393953),
                  backgroundImage: AssetImage('assets/images/girl.png'),
                ),
                const SizedBox(width: 5),
                Text(
                  'David S.',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
