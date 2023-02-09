import 'package:energy_app/constants/colors.dart';
import 'package:energy_app/constants/icons.dart';
import 'package:energy_app/views/pages/review/review_page.dart';
import 'package:energy_app/views/pages/signup/sign_up_page.dart';
import 'package:energy_app/views/widgets/common_button.dart';
import 'package:energy_app/views/widgets/common_textfield.dart';
import 'package:energy_app/views/widgets/footer_text.dart';
import 'package:energy_app/views/widgets/greeting_lines.dart';
import 'package:energy_app/views/widgets/social_auth_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                  'Login To Your Account',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
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
                CommonButton(
                    onTap: () {
                      Get.offAll(() => const ReviewPage());
                    },
                    title: 'Login To Your Account'),
                SizedBox(height: Get.height * 0.02),
                Align(
                  child: Text(
                    'Or',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: Get.height * 0.02),
                SocialAuthButton(
                  onTap: () {},
                  color: const Color(0xff282841),
                  icon: IconClass.google,
                  title: 'Login With Google',
                ),
                SizedBox(height: Get.height * 0.02),
                SocialAuthButton(
                  onTap: () {},
                  color: ColorClass.scaffoldColor,
                  icon: IconClass.apple,
                  title: 'Login With Apple',
                ),
                const Spacer(),
                FooterText(
                  onTap: TapGestureRecognizer()
                    ..onTap = () => Get.to(() => SignupPage()),
                  firstText: 'Don’t Have An Account?  ',
                  secondText: 'Sign Up',
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
