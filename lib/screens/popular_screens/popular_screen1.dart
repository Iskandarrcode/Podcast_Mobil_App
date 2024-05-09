import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:may8/screens/podcast_screens/podcast_screen1.dart';
import 'package:may8/screens/subscribe_screens/subscribe_screen1.dart';
import 'package:may8/widgets/pupular_show/music_section.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PopularScreen extends StatelessWidget {
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
                    "Pupular Show",
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
                          onTap: () {},
                          child: const Text("Page_2"),
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
                          child: const Text("Page_3"),
                        ),
                      ];
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                width: 300.w,
                height: 300.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/page_2/podcast.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  ZoomTapAnimation(
                    child: Container(
                      width: 130.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: const Color(0xff7d6bea),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          "Play All Show",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  ZoomTapAnimation(
                    child: Container(
                      width: 130.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          "Play All Show",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Text(
                    "12 Popular Show",
                    style:
                        TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  ZoomTapAnimation(
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),

              ///Music section
              const MusicSections(),

              SizedBox(height: 30.h),

              ///Music section
              const MusicSections(),

              SizedBox(height: 30.h),

              ///Music section
              const MusicSections(),

              SizedBox(height: 30.h),

              ///Music section
              const MusicSections(),
            ],
          ),
        ),
      ),
    );
  }
}
