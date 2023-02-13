import 'package:energy_app/constants/colors.dart';
import 'package:energy_app/constants/icons.dart';
import 'package:energy_app/views/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.05, vertical: Get.height * 0.02),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomBackButton(title: 'Reward Store'),
              SizedBox(height: Get.height * 0.02),
              Container(
                height: Get.height * 0.1,
                width: Get.width,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0.1,
                      offset: Offset(-1, 0),
                    ),
                  ],
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff101020),
                      ColorClass.scaffoldColor,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: Get.height * 0.1,
                        width: Get.width * 0.15,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/circle.png'))),
                        child: Center(
                          child: SvgPicture.asset(IconClass.devices),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '10,407',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            'Points',
                            style: GoogleFonts.poppins(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              SizedBox(
                width: Get.width,
                child: Image.asset(
                  'assets/images/Card.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Gifts',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See all gifts',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              // GridView.builder(
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2),
              //   itemBuilder: (context, index) {
              //     return Column(
              //       children: [
              //         Container(

              //         ),
              //       ],
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
