import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/my_team_page/my_team_controller.dart';
import 'package:sun_ik_app/utils/const.dart';

class MyTeamView extends GetView<MyTeamController> {
  const MyTeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color(0xffEF3E52),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/request_assets/ic_filter.png',
              color: Colors.white,
              scale: .5.h,
            ),
          )
        ],
        title: Text(
          "Ekibim",
          style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 2.2.h,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Obx(
            
            () => 
            controller.status.value.isSuccess
            ? Container(
              height: 82.h,
              width: 100.w,
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              child: GridView.builder(
                itemCount: controller.myTeamModel.data!.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.w,
                  mainAxisSpacing: 2.h,
                  mainAxisExtent: 21.h,
                ),
                padding: EdgeInsets.only(top: 2.h),
                itemBuilder: (context, index) {
                  return Container(
                    height: 20.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.w),
                      border: Border.all(
                        width: .4.w,
                        color: const Color(0xffE0E0E0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 9.h,
                            width: 16.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 0.3.w,
                                    color: const Color(0xffE0E0E0)),
                                color: const Color(0xff303243),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/my_teams/empty_profile_pic.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 1.5.h, horizontal: 1.w),
                          child: Text(
                            
                            "${controller.myTeamModel.data![index].eMPLOYEENAME.toString()} ${controller.myTeamModel.data![index].eMPLOYEESURNAME.toString()}",
                            style: GoogleFonts.inter(
                                color: Const.BASLIKTEXTCOLOR,
                                fontSize: 1.6.h,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Text(
                          controller.myTeamModel.data![index].pOSITIONNAME != null
                          ?controller.myTeamModel.data![index].pOSITIONNAME.toString()
                          : "",
                          style: GoogleFonts.inter(
                              color: Const.ACIKLAMATEXTCOLOR,
                              fontSize: 1.6.h,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ) : const CircularProgressIndicator()
            ,
          )
        ],
      ),
    );
  }
}
