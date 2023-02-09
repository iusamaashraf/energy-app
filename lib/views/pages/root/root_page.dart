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
  final _pages = [
    HomePage(),
    MeterPage(),
    DevicesPage(),
    RewardPage(),
    CommunityPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.scaffoldColor,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: Get.height * 0.05, horizontal: Get.width * 0.05),
          child: Column(
            children: [
              Header(
                notificationTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
