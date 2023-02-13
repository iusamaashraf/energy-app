import 'package:energy_app/constants/colors.dart';
import 'package:energy_app/constants/icons.dart';
import 'package:energy_app/model/positioned_current_month.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/last_month_winner_row.dart';
import 'components/position_of_month_list.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: Get.height * 0.1,
              width: Get.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade800,
                    blurRadius: 12,
                  ),
                ],
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xffFFFFFF).withOpacity(.2),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                      const Color(0xff101020),
                    ]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Leaderboard',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Participate and finish in top 3 of the leaderboard to win ',
                            style: GoogleFonts.poppins(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: '1500, 100 or 500 ',
                            style: GoogleFonts.poppins(
                                color: ColorClass.lightGreenColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'points!',
                            style: GoogleFonts.poppins(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Text(
                      'Your position this month',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const PositionOfMonthList(),
                    SizedBox(height: Get.height * 0.02),
                    Align(
                      child: Text(
                        'Last Months Winners',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    const LastMothWinnerRow(),
                    SizedBox(height: Get.height * 0.03),
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
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              backgroundColor: Color(0xff393953),
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/images/girl.png'),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Hayley Williams',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Lucky Dip Winner',
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey.shade400,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
