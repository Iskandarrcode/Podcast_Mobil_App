import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:may8/screens/podcast_screens/podcast_screen1.dart';
import 'package:may8/widgets/subscribe/subscribe_music.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SubscribeScreen extends StatelessWidget {
  const SubscribeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ZoomTapAnimation(
                    child: Icon(Icons.arrow_back_ios_outlined),
                  ),
                  const Text(
                    "Subscribe",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  PopupMenuButton(
                    offset: const Offset(100, 100),
                    itemBuilder: (ctx) {
                      return [
                        PopupMenuItem(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return PodcastScreen();
                              }),
                            );
                          },
                          child: const Text("Page_1"),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return SubscribeScreen();
                              }),
                            );
                          },
                          child: const Text("Page_2"),
                        ),
                        PopupMenuItem(
                          onTap: () {},
                          child: const Text("Page_3"),
                        ),
                      ];
                    },
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Text(
                "Subscribe Your Favorite Podcast Authores.Or\nYou Can Skip it For Now.",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 14.sp,
                ),
              ),

              SizedBox(height: 30.h),

              ///Music section
              SubscribeMusicSections(
                image: "assets/images/page_3/1.png",
                text1: "The Smith Comedy\nShow",
                colorText: Colors.white,
                colorCont: Color(0xff7d6bea),
              ),

              SizedBox(height: 30.h),

              ///Music section
              SubscribeMusicSections(
                image: "assets/images/page_3/2.jpg",
                text1: "The Boy Who Flew\nShow",
                colorText: Colors.black,
                colorCont: Colors.grey.shade200,
              ),
              SizedBox(height: 30.h),

              ///Music section
              SubscribeMusicSections(
                image: "assets/images/page_3/3.jpg",
                text1: "Community Best\nShow",
                colorText: Colors.white,
                colorCont: Color(0xff7d6bea),
              ),
              SizedBox(height: 30.h),

              ///Music section
              SubscribeMusicSections(
                image: "assets/images/page_3/4.png",
                text1: "One Week Wonders\nShow",
                colorText: Colors.black,
                colorCont: Colors.grey.shade200,
              ),
              SizedBox(height: 30.h),

              ///Music section
              SubscribeMusicSections(
                image: "assets/images/page_3/5.png",
                text1: "The Boy Who Flew\nShow",
                colorText: Colors.white,
                colorCont: Color(0xff7d6bea),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
