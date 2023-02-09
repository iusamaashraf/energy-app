import 'package:energy_app/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.notificationTap,
  }) : super(key: key);
  final VoidCallback notificationTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/progile.png'),
        GestureDetector(
          onTap: notificationTap,
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              boxShadow: const [
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
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey.shade400,
                  const Color(0xff292940),
                  const Color(0xff41414E),
                ],
              ),
            ),
            child: Center(
              child: SvgPicture.asset(IconClass.notification),
            ),
          ),
        ),
      ],
    );
  }
}
