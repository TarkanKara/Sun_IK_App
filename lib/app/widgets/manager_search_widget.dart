import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../modules/manager_search_page/manager_search_controller.dart';

class SearchTextFormField extends GetView<ManagerSearchPageController> {
  final String hintText;
  final Widget prefixIcon;
  final String? suffixIcon;
  const SearchTextFormField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      /* onChanged: (value) {
        value == "" ? controller.searchBarDialog() : null;
      }, */
      cursorHeight: 3.5.h,
      cursorColor: const Color(0xff71717A),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          isDense: true,
          fillColor: Colors.white,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 2.7.h,
              color: const Color(0xff78716C)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.w),
            borderSide:
                BorderSide(width: .42.w, color: const Color(0xff71717A)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.w),
            borderSide:
                BorderSide(width: .42.w, color: const Color(0xffCBD5E1)),
          )),
    );
  }
}

/* class GetFilterDialog {
  static questionDialog({
    String? title,
    String? message,
    Callback? cancelpress,
    Callback? confirmpress,
    List? contentText 
  }) =>
      Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 1.h),
        title: title!,  //"Filter",
        titleStyle: GoogleFonts.inter(
          fontSize: 2.3.h,
          color: const Color(0xff78716C),
          fontWeight: FontWeight.w500,
        ),
        content: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Divider(thickness: .3.w, color: const Color(0xff71717A)),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Active + Passive",
                  style: GoogleFonts.inter(
                    fontSize: 2.h,
                    color: const Color(0xff78716C),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(thickness: .3.w, color: const Color(0xff71717A)),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Active",
                  style: GoogleFonts.inter(
                    fontSize: 2.h,
                    color: const Color(0xff78716C),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(thickness: .3.w, color: const Color(0xff71717A)),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Passive",
                  style: GoogleFonts.inter(
                    fontSize: 2.h,
                    color: const Color(0xff78716C),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(thickness: .3.w, color: const Color(0xff71717A)),
            ],
          ),
        ),
        confirm: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Text(
            "Cancel",
            style: GoogleFonts.inter(
              fontSize: 2.h,
              color: const Color(0xff78716C),
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
} */
