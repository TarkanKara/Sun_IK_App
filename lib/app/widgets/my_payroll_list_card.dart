import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyPayrollListCard extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  final Callback? callback;

  const MyPayrollListCard({
    Key? key,
    required this.titleText,
    required this.subTitleText,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      color: const Color(0xffFDFDFD),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xffFDFDFD),
          child: IconButton(
              onPressed: () {}, icon: Image.asset("assets/images/pdf.png")),
        ),
        title: Text(
          titleText,
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontSize: 2.2.h, fontWeight: FontWeight.bold),
        ),
        /* subtitle: Text(
          subTitleText,
          style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 1.8.h),
        ), */
        trailing:
            IconButton(onPressed: callback, icon: const Icon(Icons.download)),
      ),
    );
  }
}
