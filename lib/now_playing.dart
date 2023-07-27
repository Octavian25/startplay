import 'dart:async';

import 'package:animate_do/animate_do.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:marquee/marquee.dart';
import 'package:startplay/rest_page.dart';
import 'package:startplay/startplay_page.dart';
import 'package:startplay/wedding_of_page.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({Key? key}) : super(key: key);

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  bool showTitle = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      setState(() {
        showTitle = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Stream<DocumentSnapshot<Map<String, dynamic>>> nowPlayingStream =
        FirebaseFirestore.instance.collection('nowplaying').doc('show').snapshots();
    final Stream<DocumentSnapshot<Map<String, dynamic>>> modeStream =
        FirebaseFirestore.instance.collection('mode').doc('current').snapshots();
    final Stream<DocumentSnapshot<Map<String, dynamic>>> promoStream =
        FirebaseFirestore.instance.collection('promo').doc('current').snapshots();
    return Scaffold(
      body: Stack(
        children: [
          StreamBuilder<DocumentSnapshot>(
              stream: modeStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.get("mode") == "BANNER") {
                    return BannerStartplay(showTitle: showTitle);
                  } else if (snapshot.data!.get("mode") == "WEDDINGOF") {
                    return const WeddingOfPage();
                  } else if (snapshot.data!.get("mode") == "NOWPLAYING") {
                    return NowPlayingWidget(nowPlayingStream: nowPlayingStream);
                  } else if (snapshot.data!.get("mode") == "BREAK") {
                    return const RestPage();
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
          StreamBuilder<DocumentSnapshot>(
            stream: promoStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 60.h,
                    color: Colors.black,
                    child: Marquee(
                        text: snapshot.data!.get("promo"),
                        style: const TextStyle(color: Colors.white, fontSize: 24)),
                  ),
                );
              } else {
                return Container();
              }
            },
          )
        ],
      ),
    );
  }
}

class NowPlayingWidget extends StatelessWidget {
  const NowPlayingWidget({
    Key? key,
    required this.nowPlayingStream,
  }) : super(key: key);

  final Stream<DocumentSnapshot<Map<String, dynamic>>> nowPlayingStream;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: nowPlayingStream,
        builder: (context, snapshotPlaylist) {
          if (snapshotPlaylist.hasData) {
            return Center(
                child: SizedBox(
              width: 0.8.sw,
              height: 0.8.sh,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Row(
                    children: [
                      Flexible(
                          flex: 2,
                          child: FadeInDown(
                            child: Center(
                              child: Image.asset("assets/startplay.png"),
                            ),
                          )),
                      45.horizontalSpaceRadius,
                      Flexible(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FadeInDown(
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.emergency_share_rounded,
                                    size: 60.sp,
                                  ),
                                ),
                              ),
                              50.verticalSpacingRadius,
                              ElasticInUp(
                                child: Text(snapshotPlaylist.data!.get("title"),
                                    style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold)),
                              ),
                              ElasticInUp(
                                delay: const Duration(milliseconds: 100),
                                child: Text("${snapshotPlaylist.data!.get("artist")}",
                                    style: TextStyle(fontSize: 25.sp, color: Colors.teal)),
                              ),
                              10.verticalSpacingRadius,
                              ElasticInUp(
                                delay: const Duration(milliseconds: 200),
                                child: Text("Cover By Startplay Music Entertaiment",
                                    style: TextStyle(fontSize: 25.sp, color: Colors.blueGrey)),
                              ),
                              50.verticalSpaceFromWidth,
                              LottieBuilder.asset("assets/music.json"),
                              30.verticalSpaceFromWidth,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ElasticInUp(
                                    child: Icon(
                                      Icons.skip_previous_rounded,
                                      size: 60.sp,
                                    ),
                                  ),
                                  ElasticInUp(
                                    delay: const Duration(milliseconds: 200),
                                    child: Icon(
                                      Icons.pause_rounded,
                                      size: 100.sp,
                                    ),
                                  ),
                                  ElasticInUp(
                                    delay: const Duration(milliseconds: 300),
                                    child: Icon(
                                      Icons.skip_next_rounded,
                                      size: 60.sp,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                      80.horizontalSpaceRadius
                    ],
                  ),
                ),
              ),
            ));
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
