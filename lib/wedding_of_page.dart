import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeddingOfPage extends StatelessWidget {
  const WeddingOfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Stream<DocumentSnapshot<Map<String, dynamic>>> weddingStream =
        FirebaseFirestore.instance
            .collection('weddingof')
            .doc('weddingof')
            .snapshots();
    return StreamBuilder<DocumentSnapshot>(
        stream: weddingStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Stack(
              children: [
                Image.asset(
                  "assets/background.jpg",
                  width: 1.sw,
                  height: 1.sw,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    100.verticalSpaceFromWidth,
                    Center(
                      child: Text("WELCOME",
                          style: GoogleFonts.openSans(fontSize: 30.sp)),
                    ),
                    20.verticalSpaceFromWidth,
                    Center(
                      child: Text("TO THE WEDDING OF",
                          style: GoogleFonts.openSans(fontSize: 30.sp)),
                    ),
                    const Spacer(),
                    Center(
                      child: Text(snapshot.data!.get("cpp"),
                          style: GoogleFonts.dancingScript(fontSize: 50.sp)),
                    ),
                    40.verticalSpaceFromWidth,
                    Center(
                      child: Text("&",
                          style: GoogleFonts.dancingScript(fontSize: 50.sp)),
                    ),
                    40.verticalSpaceFromWidth,
                    Center(
                      child: Text(snapshot.data!.get("cpw"),
                          style: GoogleFonts.dancingScript(fontSize: 50.sp)),
                    ),
                    const Spacer(),
                    Center(
                      child: Text("THANKS FOR CELEBRATING WITH US",
                          style: GoogleFonts.openSans(fontSize: 30.sp)),
                    ),
                    100.verticalSpaceFromWidth,
                  ],
                ),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
