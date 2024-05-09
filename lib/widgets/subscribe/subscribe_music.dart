import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SubscribeMusicSections extends StatelessWidget {
  late String image;
  late String text1;
  Color colorText = Colors.white;
  Color colorCont = Color(0xff7d6bea);
  SubscribeMusicSections({
    required this.image,
    required this.text1,
    required this.colorText,
    required this.colorCont,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70.w,
          height: 70.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter),
          ),
        ),
        SizedBox(width: 12.w),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "685 Podcast",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(width: 60.w),
                    Container(
                      width: 80.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        color: colorCont,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          "Subscribe",
                          style: TextStyle(color: colorText),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
