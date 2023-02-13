import 'package:energy_app/constants/colors.dart';
import 'package:energy_app/model/positioned_current_month.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PositionOfMonthList extends StatelessWidget {
  const PositionOfMonthList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.3,
      width: Get.width,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: positionMonthList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: positionMonthList[index].isSelect!
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
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                              Color(0xff161525),
                            ],
                          ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          positionMonthList[index].positionNumber!,
                          style: GoogleFonts.poppins(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 10),
                        CircleAvatar(
                          backgroundColor: const Color(0xff393953),
                          backgroundImage:
                              AssetImage(positionMonthList[index].image!),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          positionMonthList[index].name!,
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Text(
                          positionMonthList[index].name!,
                          style: GoogleFonts.poppins(
                              color: positionMonthList[index].isSelect!
                                  ? Colors.white
                                  : ColorClass.lightGreenColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
