import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyLeavesListTile extends StatelessWidget {
  final String imagePath, titleText, subTitleText, dataText;
  const MyLeavesListTile({
    Key? key,
    required this.imagePath,
    required this.titleText,
    required this.subTitleText,
    required this.dataText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: const Color(0xffFDFDFD),
      child: Padding(
        padding: EdgeInsets.only(top: 2.w),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: const Color(0xffFDFDFD),
            child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                )),
          ),
          title: Text(
            titleText,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(fontSize: 2.2.h, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subTitleText,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(fontSize: 2.2.h, fontWeight: FontWeight.bold),
          ),
          trailing: Container(
            height: 10.w,
            width: 15.w,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(3.w)),
            child: Center(
              child: Text(
                dataText,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(fontSize: 3.9.w, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
