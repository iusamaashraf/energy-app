import 'package:energy_app/constants/colors.dart';
import 'package:energy_app/constants/icons.dart';
import 'package:energy_app/views/widgets/common_button.dart';
import 'package:energy_app/views/widgets/common_textfield.dart';
import 'package:energy_app/views/widgets/footer_text.dart';
import 'package:energy_app/views/widgets/greeting_lines.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.scaffoldColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const GreetingLines(),
                SizedBox(height: Get.height * 0.05),
                Text(
                  'Create Your Account',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                CommomTextField(
                  controller: nameController,
                  hintText: 'Your Name',
                  onChanged: (value) {
                    return;
                  },
                  validator: (value) {
                    return;
                  },
                  prefixIcon: IconClass.user,
                  keyboardType: TextInputType.name,
                ),
                SizedBox(height: Get.height * 0.02),
                CommomTextField(
                  controller: mailController,
                  hintText: 'Email Address',
                  onChanged: (value) {
                    return;
                  },
                  validator: (value) {
                    return;
                  },
                  prefixIcon: IconClass.mail,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: Get.height * 0.02),
                CommomTextField(
                  isObscure: true,
                  controller: passwordController,
                  hintText: 'Password',
                  onChanged: (value) {
                    return;
                  },
                  validator: (value) {
                    return;
                  },
                  prefixIcon: IconClass.password,
                  keyboardType: TextInputType.name,
                ),
                SizedBox(height: Get.height * 0.02),
                CommomTextField(
                  isObscure: true,
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  onChanged: (value) {
                    return;
                  },
                  validator: (value) {
                    return;
                  },
                  prefixIcon: IconClass.password,
                  keyboardType: TextInputType.name,
                ),
                SizedBox(height: Get.height * 0.02),
                CommonButton(onTap: () {}, title: 'Create Your Account'),
                const Spacer(),
                FooterText(
                  onTap: TapGestureRecognizer()..onTap = () => Get.back(),
                  firstText: 'Already Have An Account?  ',
                  secondText: 'Sign In',
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
