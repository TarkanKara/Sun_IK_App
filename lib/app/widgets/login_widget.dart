import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/login_page/login_controller.dart';

class LoginTextWidget extends StatelessWidget {
  final String hintText;
  //final String labelText;
  final Widget suffixIcon;

  const LoginTextWidget({
    Key? key,
    required this.hintText,
    // required this.labelText,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {},
      style: GoogleFonts.inter(
          color: Colors.black, fontWeight: FontWeight.w500, fontSize: 2.h),
      decoration: InputDecoration(
        border: InputBorder.none,
        //labelStyle: GoogleFonts.inter(color: Colors.black),
        //labelText: labelText,
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: GoogleFonts.inter(color: Colors.black),
        suffixIcon: suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.w),
          borderSide: BorderSide(color: Colors.black, width: .6.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.w),
          borderSide: BorderSide(color: Colors.grey, width: .6.w),
        ),
      ),
    );
  }
}

//login dropdown menu
class DropDownMenu extends GetView<LoginController> {
  const DropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: 100.w,
        margin: EdgeInsets.only(bottom: 2.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.w),
          border: Border.all(color: Colors.black, width: .6.w),
        ),
        child: DropdownButton<String>(
          value: controller.dropdownvalue.value,
          icon: Padding(
              padding: EdgeInsets.only(left: 32.w, bottom: .4.h),
              child: const Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.black,
              )),
          underline: const SizedBox(),
          style: const TextStyle(color: Colors.black),
          onChanged: (String? value) {
            controller.dropdownvalue.value = value!;
          },
          items:
              controller.company.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: EdgeInsets.only(left: 3.w, bottom: .4.h),
                child: Text(
                  value,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 2.h,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 1.h,
            minimumSize: Size(100.w, 6.h),
            backgroundColor: Colors.white),
        child: Center(
          child: Text(
            "LOGIN",
            style: GoogleFonts.inter(
                color: const Color(0xffcf3842),
                fontWeight: FontWeight.bold,
                fontSize: 2.5.h,
                letterSpacing: 1.w),
          ),
        ));
  }
}
