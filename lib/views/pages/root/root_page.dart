import 'package:energy_app/constants/colors.dart';
import 'package:energy_app/constants/icons.dart';
import 'package:energy_app/views/pages/root/bottom_nav/community/community_page.dart';
import 'package:energy_app/views/pages/root/bottom_nav/devices/devices_page.dart';
import 'package:energy_app/views/pages/root/bottom_nav/home/home_page.dart';
import 'package:energy_app/views/pages/root/bottom_nav/meter/meter_page.dart';
import 'package:energy_app/views/pages/root/bottom_nav/reward/reward_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'components/header.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selecetedIndex = 0;
  final _pages = [
    HomePage(),
    MeterPage(),
    DevicesPage(),
    RewardPage(),
    CommunityPage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.scaffoldColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: Get.height * 0.04,
                  left: Get.width * 0.05,
                  right: Get.width * 0.05),
              child: Header(notificationTap: () {}),
            ),
            Expanded(child: _pages[selecetedIndex]),
            Container(
              height: Get.height * 0.12,
              width: Get.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff221F2E),
                    Color(0xff161525),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    bottomNavBar(IconClass.home, 0),
                    bottomNavBar(IconClass.meter, 1),
                    centerNavBar(IconClass.devices, 2),
                    bottomNavBar(IconClass.gift, 3),
                    bottomNavBar(IconClass.community, 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget centerNavBar(String imgPath, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selecetedIndex = index;
        });
      },
      child: Container(
        height: Get.height * 0.11,
        width: Get.width * 0.19,
        decoration: const BoxDecoration(
          color: ColorClass.scaffoldColor,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 1,
                  offset: Offset(
                    .5,
                    0.0,
                  ),
                ),
              ],
              color: Colors.white,
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff504B64),
                  Color(0xff232237),
                ],
              ),
            ),
            child: Center(
              child: SvgPicture.asset(
                imgPath,
                color: index == selecetedIndex
                    ? ColorClass.lightGreenColor
                    : ColorClass.unselectedNavColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomNavBar(String imgPath, int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selecetedIndex = index;
          });
        },
        child: SvgPicture.asset(
          imgPath,
          color: index == selecetedIndex
              ? ColorClass.lightGreenColor
              : ColorClass.unselectedNavColor,
        ));
  }
}
