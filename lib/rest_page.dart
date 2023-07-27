import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestPage extends StatelessWidget {
  const RestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text("WILL BE RIGHT BACK SOON",
              style: GoogleFonts.openSans(
                  fontSize: 50.sp, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          width: 0.7.sw,
          height: 0.7.sh,
          child: LottieBuilder.asset("assets/clock.json"),
        )
      ],
    );
  }
}
