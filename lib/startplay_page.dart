import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerStartplay extends StatelessWidget {
  const BannerStartplay({
    Key? key,
    required this.showTitle,
  }) : super(key: key);

  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Flexible(
                flex: 2,
                child: Center(
                    child: FadeInLeftBig(
                  child: Image.asset(
                    "assets/startplay.png",
                    width: 0.4.sw,
                  ),
                ))),
            showTitle
                ? Flexible(
                    flex: 3,
                    child: Center(
                        child: AnimatedTextKit(
                      repeatForever: false,
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText("Startplay Music Entertaiment",
                            textAlign: TextAlign.center,
                            textStyle: TextStyle(
                                fontSize: 50.sp, fontWeight: FontWeight.bold),
                            curve: Curves.easeIn)
                      ],
                    )))
                : Flexible(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FadeInUp(
                          child: Center(
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                  width: 0.35.sw,
                                  height: 0.1.sh,
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      20.horizontalSpace,
                                      Image.asset(
                                        "assets/youtube.png",
                                        height: 0.04.sw,
                                        width: 0.04.sw,
                                      ),
                                      Expanded(
                                          child: Center(
                                        child: Text(
                                          "Startplay music entertainment",
                                          style: TextStyle(
                                              fontSize: 25.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        20.verticalSpace,
                        FadeInUp(
                          child: Center(
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                  width: 0.35.sw,
                                  height: 0.1.sh,
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      20.horizontalSpace,
                                      Image.asset(
                                        "assets/instagram.png",
                                        height: 0.04.sw,
                                        width: 0.04.sw,
                                      ),
                                      Expanded(
                                          child: Center(
                                        child: Text(
                                          "@Startplay_musik",
                                          style: TextStyle(
                                              fontSize: 25.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        20.verticalSpace,
                        FadeInUp(
                          delay: const Duration(milliseconds: 500),
                          child: Center(
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                  width: 0.35.sw,
                                  height: 0.1.sh,
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      20.horizontalSpace,
                                      Image.asset(
                                        "assets/gmail.png",
                                        height: 0.04.sw,
                                        width: 0.04.sw,
                                      ),
                                      Expanded(
                                          child: Center(
                                        child: Text(
                                          "startplaymusik@gmail.com",
                                          style: TextStyle(
                                              fontSize: 25.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        20.verticalSpace,
                        FadeInUp(
                          delay: const Duration(milliseconds: 1000),
                          child: Center(
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                  width: 0.35.sw,
                                  height: 0.1.sh,
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      20.horizontalSpace,
                                      Image.asset(
                                        "assets/whatsapp.png",
                                        height: 0.04.sw,
                                        width: 0.04.sw,
                                      ),
                                      Expanded(
                                          child: Center(
                                        child: Text(
                                          "0896-8988-0958",
                                          style: TextStyle(
                                              fontSize: 25.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        100.verticalSpace,
                      ],
                    )),
          ],
        ),
        BounceInUp(
          delay: const Duration(seconds: 5),
          duration: const Duration(milliseconds: 400),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 30.w),
              child: Image.asset(
                "assets/scanme.png",
                width: 0.3.sw,
              ),
            ),
          ),
        )
      ],
    );
  }
}
