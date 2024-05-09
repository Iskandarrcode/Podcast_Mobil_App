import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:may8/screens/popular_screens/popular_screen1.dart';
import 'package:may8/screens/subscribe_screens/subscribe_screen1.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PodcastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          children: [
            Container(
              width: 300.w,
              height: 400.h,
              decoration: const BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(100),
                ),
                image: DecorationImage(
                    image: AssetImage("assets/images/page_1/Horse.jpeg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ZoomTapAnimation(
                    child: Container(
                      width: 65.w,
                      height: 65.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: const Color(0xff7d6bea),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xff7d6bea),
                              blurRadius: 40,
                            ),
                          ]),
                      child: const Icon(
                        Icons.play_arrow_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Podcast",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Listen Your Favourite Podcast",
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.grey.shade500,
              ),
            ),
            Text(
              "Anywhere,Anytime.",
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.grey.shade500,
              ),
            ),
            SizedBox(height: 30.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PopularScreen();
                    },
                  ),
                );
              },
              child: Ink(
                width: 280.w,
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: const Color(0xff7d6bea),
                ),
                child: Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PopularScreen();
                    },
                  ),
                );
              },
              child: Ink(
                width: 100.w,
                height: 20.h,
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff7d6bea),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
