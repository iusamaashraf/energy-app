import 'package:energy_app/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherTile extends StatelessWidget {
  const WeatherTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(IconClass.weather),
        const SizedBox(width: 10),
        Text(
          '20, Aug 2022',
          style: GoogleFonts.poppins(
            color: Colors.grey.shade400,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        const SizedBox(width: 10),
        CircleAvatar(
          radius: 3,
          backgroundColor: Colors.grey.shade400,
        ),
        const SizedBox(width: 10),
        Text(
          '01:20AM',
          style: GoogleFonts.poppins(
            color: Colors.grey.shade400,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
