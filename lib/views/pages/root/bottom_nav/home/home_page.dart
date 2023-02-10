import 'package:energy_app/constants/colors.dart';
import 'package:energy_app/model/asset_mode.dart';
import 'package:energy_app/views/pages/root/bottom_nav/home/asset_tab/bathroom_page.dart';
import 'package:energy_app/views/pages/root/bottom_nav/home/asset_tab/bedroom_page.dart';
import 'package:energy_app/views/pages/root/bottom_nav/home/asset_tab/car_page.dart';
import 'package:energy_app/views/pages/root/bottom_nav/home/asset_tab/kitchen_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/weather_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final _pages = const [
    CarPage(),
    BathroomPage(),
    KitchenPage(),
    BedroomPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05, vertical: Get.height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello Christeen',
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
          const SizedBox(height: 10),
          const WeatherTile(),
          SizedBox(height: Get.height * 0.02),
          SizedBox(
            height: Get.height * 0.15,
            width: Get.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: assetList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: assetTab(assetList[index].image!,
                          assetList[index].title!, index),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(child: _pages[selectedIndex]),
        ],
      ),
    );
  }

  Widget assetTab(String image, String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Container(
            height: Get.height * 0.1,
            width: Get.width * 0.2,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 0,
                  offset: Offset(-1, 0),
                ),
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 0,
                  offset: Offset(-1, -1),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 0,
                  offset: Offset(0, -1),
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  index == selectedIndex
                      ? const Color(0xff221F2E)
                      : const Color(0xff101020),
                  index == selectedIndex
                      ? const Color(0xff161525)
                      : const Color(0xff101020),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          color: index == selectedIndex
                              ? ColorClass.lightGreenColor.withOpacity(.2)
                              : const Color(0xff4E4B62).withOpacity(.2),
                          shape: BoxShape.circle),
                      child: Container(
                        margin: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: index == selectedIndex
                                ? ColorClass.lightGreenColor
                                : const Color(0xff4E4B62),
                            shape: BoxShape.circle),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    assetList[index].image!,
                    color: index == selectedIndex
                        ? Colors.white
                        : Colors.grey.shade400,
                  ),
                ],
              ),
            ),
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: index == selectedIndex
                    ? Colors.white
                    : Colors.grey.shade400),
          ),
        ],
      ),
    );
  }
}
