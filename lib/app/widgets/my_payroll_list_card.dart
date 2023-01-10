import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyPayrollListCard extends StatelessWidget {
  const MyPayrollListCard({
    Key? key,
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
          "25 April 1997",
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontSize: 1.8.h, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "My Payroll",
          style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 1.8.h),
        ),
        trailing:
            IconButton(onPressed: () {}, icon: const Icon(Icons.download)),
      ),
    );
  }
}
