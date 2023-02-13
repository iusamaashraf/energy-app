import 'package:energy_app/views/pages/root/bottom_nav/community/leaderboard/leaderboard_page.dart';
import 'package:energy_app/views/pages/root/bottom_nav/community/refferel/referrel_page.dart';
import 'package:energy_app/views/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  int selectedIndex = 0;
  final _pages = [
    LeaderboardPage(),
    RefferelPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05, vertical: Get.height * 0.02),
      child: Column(
        children: [
          const CustomBackButton(
            title: 'Community',
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                tabs('Leaderboard', 0),
                tabs('Referral', 1),
              ],
            ),
          ),
          Expanded(child: _pages[selectedIndex]),
        ],
      ),
    );
  }

  Widget tabs(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: Get.height * 0.06,
        width: Get.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              offset: const Offset(-0, 0),
              color: Colors.grey.shade800,
            ),
          ],
          gradient: index == selectedIndex
              ? const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xff50FEB4),
                    Color(0xff2EE094),
                    Color(0xff2EE094),
                    Color(0xff2EE094),
                    Color(0xff2EE094),
                    Color(0xff2EE094),
                    Color(0xff2EE094),
                    Color(0xff2EE094),
                    Color(0xff2EE094),
                    Color(0xff2EE094),
                    Color(0xff2EE094),
                    Color(0xff2EE094),
                    Color(0xff2EE094),
                  ],
                )
              : const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffFFFFFF),
                    // const Color(0xff101021).withOpacity(.4),
                    Color(0xff101020),
                    Color(0xff101020),
                    Color(0xff101020),
                    Color(0xff101020),
                    Color(0xff101020),
                    Color(0xff101020),
                    Color(0xff101020),
                  ],
                ),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 14,
                color: index == selectedIndex
                    ? Colors.white
                    : Colors.grey.shade400),
          ),
        ),
      ),
    );
  }
}
