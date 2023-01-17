// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyLeavesCard extends StatelessWidget {
  final String myleavesText1,
      myleavesInformationText1,
      myleavesText2,
      myleavesInformationText2,
      myleavesText3,
      myleavesInformationText3;
  const MyLeavesCard({
    Key? key,
    required this.myleavesText1,
    required this.myleavesInformationText1,
    required this.myleavesText2,
    required this.myleavesInformationText2,
    required this.myleavesText3,
    required this.myleavesInformationText3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.w)),
      child: Container(
        margin: EdgeInsets.only(left: 5.w, right: 5.w),
        height: 16.h,
        width: 75.w,
        decoration: BoxDecoration(
            color: const Color(0xffFEFEFE),
            borderRadius: BorderRadius.all(Radius.circular(5.w))),
        child: Padding(
          padding: EdgeInsets.only(top: 11.w),
          child: Column(
            children: [
              MyLeavesInformation(
                  text: myleavesText1,
                  informationText: myleavesInformationText1),
              MyLeavesInformation(
                  text: myleavesText2,
                  informationText: myleavesInformationText2),
              MyLeavesInformation(
                  text: myleavesText3,
                  informationText: myleavesInformationText3),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLeavesInformation extends StatelessWidget {
  final String text, informationText;
  const MyLeavesInformation({
    Key? key,
    required this.text,
    required this.informationText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.5.w),
      child: Row(
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(fontSize: 4.w, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(
            informationText,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(fontSize: 4.w, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
