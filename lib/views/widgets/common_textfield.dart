import 'package:energy_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CommomTextField extends StatelessWidget {
  CommomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.keyboardType,
    required this.onChanged,
    required this.validator,
    this.isObscure = false,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String prefixIcon;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      validator: validator,
      style: GoogleFonts.poppins(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
      keyboardType: keyboardType,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(prefixIcon),
        ),
        fillColor: ColorClass.scaffoldColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: ColorClass.textFieldBorderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: ColorClass.textFieldBorderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: ColorClass.textFieldBorderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: ColorClass.textFieldBorderColor),
        ),
      ),
    );
  }
}
