import 'package:energy_app/constants/colors.dart';
import 'package:energy_app/views/pages/root/root_page.dart';
import 'package:energy_app/views/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.scaffoldColor,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Text('The easiest way to save energy & help the planet',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              SizedBox(height: Get.height * 0.02),
              Text(
                  'Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
              SizedBox(height: Get.height * 0.02),
              const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/icons/reviewimage.png')),
              SizedBox(height: Get.height * 0.02),
              Text(
                'Christeen Lee',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Text(
                'London, United Kingdom',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                          color:
                              index == 1 ? Colors.white : Colors.transparent),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              CommonButton(
                onTap: () {
                  Get.offAll(() => RootPage());
                },
                title: 'Continue',
              ),
              SizedBox(height: Get.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
