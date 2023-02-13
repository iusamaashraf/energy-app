import 'package:energy_app/constants/icons.dart';
import 'package:energy_app/model/devices_model.dart';
import 'package:energy_app/model/smart_%20model.dart';
import 'package:energy_app/views/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../home/components/weather_tile.dart';
import 'components/devicetile.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05, vertical: Get.height * 0.02),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomBackButton(title: 'Devices'),
            SizedBox(height: Get.height * 0.02),
            const WeatherTile(),
            SizedBox(height: Get.height * 0.02),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Devicetile(
                    image: IconClass.devices,
                    title: '29',
                    unit: 'Points',
                  ),
                  Devicetile(
                    image: IconClass.co2,
                    title: '29',
                    unit: 'Points',
                  ),
                  Devicetile(
                    image: IconClass.energy,
                    title: '29',
                    unit: 'Points',
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  devicesList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: Get.width * 0.44,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: Get.height * 0.06,
                              width: Get.width * 0.1,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/circle.png'))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    SvgPicture.asset(devicesList[index].iamge!),
                              ),
                            ),
                            Text(
                              devicesList[index].title!,
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 10),
                            RowData(
                              title: 'Points',
                              gradient: const [
                                Color(0xff26CBF5),
                                Color(0xff337CFF),
                              ],
                              value: devicesList[index].points!,
                            ),
                            const SizedBox(height: 10),
                            RowData(
                              title: 'CO2',
                              gradient: const [
                                Color(0xff33FE86),
                                Color(0xff24CDAA),
                              ],
                              value: devicesList[index].co2!,
                            ),
                            const SizedBox(height: 10),
                            RowData(
                              title: 'Energy',
                              gradient: const [
                                Color(0xff33FDF3),
                                Color(0xff2792E9),
                              ],
                              value: devicesList[index].energy!,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Text(
              'Participated\nVia Smart Meter (Beta)',
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(height: Get.height * 0.02),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Devicetile(
                    image: IconClass.devices,
                    title: '29',
                    unit: 'Points',
                  ),
                  Devicetile(
                    image: IconClass.co2,
                    title: '29',
                    unit: 'Points',
                  ),
                  Devicetile(
                    image: IconClass.energy,
                    title: '29',
                    unit: 'Points',
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: List.generate(
                    smartList.length,
                    (index) => Container(
                      padding: const EdgeInsets.all(8),
                      width: Get.width * 0.5,
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
                      child: Row(
                        children: [
                          SvgPicture.asset(smartList[index].image!),
                          const SizedBox(width: 10),
                          Text(
                            smartList[index].name!,
                            style: GoogleFonts.poppins(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.02),
          ],
        ),
      ),
    );
  }
}

class RowData extends StatelessWidget {
  const RowData({
    Key? key,
    required this.gradient,
    required this.title,
    required this.value,
  }) : super(key: key);
  final String title;
  final String value;
  final List<Color>? gradient;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade400),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: gradient!),
          ),
          child: Center(
            child: Text(
              value,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
