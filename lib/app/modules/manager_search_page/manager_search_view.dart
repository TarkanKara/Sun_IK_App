import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/manager_search_page/manager_search_controller.dart';

import '../../widgets/manager_search_widget.dart';

class ManagerSearchView extends GetView<ManagerSearchPageController> {
  const ManagerSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafafa),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffEF3E52),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: const Color(0xffffffff),
            size: 3.3.h,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Search",
          style: GoogleFonts.inter(
            fontSize: 3.3.h,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 2.5.w, bottom: .5.h),
            child: GestureDetector(
              onTap: () {
                // controller.filterDialog();
              },
              child: Icon(
                Icons.filter_list_alt,
                color: Colors.white,
                size: 3.3.h,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 4.h),
              SearchTextFormField(
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search_sharp,
                  color: const Color(0xffc7c7c7),
                  size: 4.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 1.h),
                child: Icon(
                  Icons.search_sharp,
                  color: const Color(0xffc7c7c7),
                  size: 22.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Text(
                  "Search Name, Surname,",
                  style: GoogleFonts.inter(
                      color: const Color(0xffc7c7c7),
                      fontWeight: FontWeight.w500,
                      fontSize: 2.3.h,
                      letterSpacing: 1),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Text(
                  "Company, Departman, Position",
                  style: GoogleFonts.inter(
                      color: const Color(0xffc7c7c7),
                      fontWeight: FontWeight.w500,
                      fontSize: 2.3.h,
                      letterSpacing: 1),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
