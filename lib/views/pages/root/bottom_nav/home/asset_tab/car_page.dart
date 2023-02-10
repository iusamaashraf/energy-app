import 'package:energy_app/constants/colors.dart';
import 'package:energy_app/model/car_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: carList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1 / .5),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: Get.height * 0.1,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 1,
                        offset: Offset(-1, 0),
                      ),
                    ],
                    gradient: const LinearGradient(
                      colors: [Color(0xff221F2E), Color(0xff161525)],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: Get.height * 0.05,
                          width: Get.width * 0.1,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff221F2E), Color(0xff161525)],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 1,
                                offset: Offset(-1, 0),
                              ),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              carList[index].image!,
                              height: Get.height * 0.05,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              carList[index].consumption!,
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Text(
                              carList[index].saved!,
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade400),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: Get.width,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: .5,
                    offset: Offset(-1, 0),
                  ),
                ],
                gradient: const LinearGradient(
                  colors: [Color(0xff221F2E), Color(0xff161525)],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset('assets/images/tesla.png'),
                    Text(
                      'Tesla Model X',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LinearPercentIndicator(
                      center: Text(
                        '60%',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      barRadius: const Radius.circular(6),
                      width: Get.width * 0.8,
                      lineHeight: Get.height * 0.05,
                      percent: .6,
                      backgroundColor: const Color(0xff252233),
                      progressColor: ColorClass.lightGreenColor,
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 5,
                            backgroundColor: ColorClass.lightGreenColor,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Charging',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade400),
                          ),
                          const Spacer(),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Finish charging in ',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade400)),
                                TextSpan(
                                    text: '20 minutes',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: ColorClass.lightGreenColor))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
