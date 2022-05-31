import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';
import 'package:sales_app/constants/decoration.dart';
import 'package:sales_app/screens/login_screen.dart';
import 'package:sales_app/widgets/roundCornerShape.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications>
    with WidgetsBindingObserver {
  bool _value = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text(
          'Notifications',
          style: TextStyle(color: bluecolor, fontSize: 27.sp),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Material(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 77.h,
                ),
                Center(
                  child: Container(
                    height: 129.h,
                    width: 129.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF3F3F3)),
                    child: Center(
                      child: Image.asset('assets/notifications.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 15),
                  child: Container(
                    height: 126.h,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Sed non  mauris vitae erat consequatauctor eu in elit. Class aptent taciti  sociosquad litora torquent per conubia nostra.',
                        style: TextStyle(
                            color: privacypolicy,
                            fontSize: 14.sp,
                            height: 1.2,
                            letterSpacing: 2),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 41.0,right: 41),
                  child: Row(
                    children: [
                      Container(
                        height: 38.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: bluecolor

                        ),
                        child: Center(
                          child: Text('All',style: TextStyle(
                              color: whiteColor,fontSize: 20.sp
                          ),),
                        ),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Container(
                        height: 38.h,
                        width: 85.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: bluecolor

                        ),
                        child: Center(
                          child: Text('Read',style: TextStyle(
                              color: whiteColor,fontSize: 20.sp
                          ),),
                        ),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Container(
                        height: 38.h,
                        width: 110.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: bluecolor

                        ),
                        child: Center(
                          child: Text('Unread',style: TextStyle(
                              color: whiteColor,fontSize: 20.sp
                          ),),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
