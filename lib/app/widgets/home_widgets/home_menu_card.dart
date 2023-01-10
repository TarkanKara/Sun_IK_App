import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/utils/const.dart';

class HomeMenuCard extends StatelessWidget {
  double cardWidth;
  double cardHeight;
  String cardName;
  String cardInfo;
  String cardIcon;
  bool isBordro;
  void Function() cardPressed;
  void Function()? lastBordroPressed;
  HomeMenuCard({
    required this.cardWidth,
    required this.cardHeight,
    required this.cardName,
    required this.cardInfo,
    required this.cardIcon,
    required this.isBordro,
    required this.cardPressed,
     this.lastBordroPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
        footer: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 100.w,
            height: 6.5.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardName,
                  style: GoogleFonts.inter(
                    color: Const.BASLIKTEXTCOLOR,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(cardInfo,
                    style: GoogleFonts.inter(
                      color: Const.ACIKLAMATEXTCOLOR,
                    )),
                isBordro
                    ? GestureDetector(
                        onTap: lastBordroPressed,
                        child: Text(Const.SONBORDROTEXT,
                            style: GoogleFonts.inter(color: Const.SONBORDROTEXTCOLOR)))
                    : Container()
              ],
            ),
          ),
        ),
        header: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
              alignment: Alignment.topLeft,
              width: 100.w,
              height: 5.h,
              child: Container(
                width: 5.h,
                height: 5.h,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(cardIcon))),
              )),
        ),
        child: GestureDetector(
          onTap: cardPressed,
          child: Container(
            width: cardWidth,
            height: cardHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Const.MENUCOLOR,
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                      spreadRadius: 0,
                      offset: Offset(0, 1))
                ]),
          ),
        ));
  }
}
