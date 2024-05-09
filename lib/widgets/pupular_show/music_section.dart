import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MusicSections extends StatelessWidget {
  const MusicSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100.w,
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: const DecorationImage(
                image: AssetImage("assets/images/page_2/podcast.png"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter),
          ),
        ),
        SizedBox(width: 20.w),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enjoy",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Socially Buzzed",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
            SizedBox(width: 50.w),
            ZoomTapAnimation(
              child: Container(
                width: 35.w,
                height: 35.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Icon(Icons.play_arrow_outlined),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
