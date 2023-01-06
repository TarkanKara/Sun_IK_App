import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginTextWidget extends StatelessWidget {
  final String hintText;
  const LoginTextWidget({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {},
      style: GoogleFonts.inter(
          color: Colors.white, fontWeight: FontWeight.w500, fontSize: 2.h),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
      ),
    );
  }
}
