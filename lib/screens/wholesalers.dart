import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';
import 'package:sales_app/constants/decoration.dart';
import 'package:sales_app/screens/bottom_navigation.dart';
import 'package:sales_app/screens/login_screen.dart';
import 'package:sales_app/screens/navigation_drawer.dart';
import 'package:sales_app/screens/privacy_policy.dart';
import 'package:sales_app/screens/termsandconditions.dart';
import 'package:sales_app/widgets/roundCornerShape.dart';

class Wholesalers extends StatefulWidget {
  @override
  _WholesalersState createState() =>
      _WholesalersState();
}

class _WholesalersState extends State<Wholesalers>
    with WidgetsBindingObserver {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      drawer: Drawer(
        child: NavigationDrawer(),
      ),
      key: scaffoldKey,
      appBar: AppBar(

        leading: IconButton(
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.openEndDrawer();
            } else {
              scaffoldKey.currentState!.openDrawer();
            }
          },
          icon: Icon(
            Icons.menu,
            color: bluecolor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              height: 35.h,
              width: 35.w,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: bluecolor),
              child: Center(
                child: Icon(
                  Icons.search,
                  color: whiteColor,
                  size: 20,
                ),
              ),
            ),
          )
        ],
        backgroundColor: whiteColor,
        title: Text(
          'LOGO',
          style: TextStyle(color: bluecolor, fontSize: 24.sp),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 21.w, right: 21.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: wholesalecontainer,
                    borderRadius: BorderRadius.circular(5.r)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 6.0,right: 6),
                    child: Row(
                      children: [
                        Container(
                          height: 40.h,
                          width: 157.w,
                          decoration: BoxDecoration(
                            color: bluecolor,
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(
                              color: bluecolor
                            )
                          ),
                          child: Center(
                            child: Text('wholesaler',style: TextStyle(
                              color: whiteColor,fontSize: 16.sp
                            ),),
                          ),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Container(
                          height: 40.h,
                          width: 157.w,
                          decoration: BoxDecoration(
                              color: wholesalecontainer,
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(
                                  color: wholesalecontainer
                              )
                          ),
                          child: Center(
                            child: Text('Traders',style: TextStyle(
                                color: blackcolor,fontSize: 16.sp
                            ),),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                ListView.builder(
                  shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context,i){
                  return Column(
                    children: [
                      Container(
                        height: 122.h,
                        width: 333.w,
                        decoration: BoxDecoration(
                          color: wholesalecontainer,
                          borderRadius: BorderRadius.circular(10.r),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: 13.0,left: 15),
                              child: Text('Lorem Ipsum',style: TextStyle(
                                color: blackcolor,fontSize: 16.sp
                              ),),
                            ),
                            SizedBox(
                              height: 4.5.h,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: 0.0,left: 15),
                              child: Row(
                                children: [
                                  Image.asset('assets/edit.png'),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text('Email not provided',style: TextStyle(
                                    color: blackcolor,fontSize: 13.sp
                                  ),),

                                ],
                              )
                            ),
                            SizedBox(
                              height: 13.h,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 7.0,right: 1),
                              child: Divider(
                                color: Color(0xffC8C5C5),
                                thickness: 1,
                              ),
                            ),
                            SizedBox(
                              height: 0.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 20),
                              child: Row(
                                children: [
                                  Text('Payables Rs.30,000',style: TextStyle(
                                    color: blackcolor,fontSize: 13.sp
                                  ),),
                                  Spacer(),
                                  Container(
                                    width: 118.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: bluecolor
                                    ),
                                    child: Center(
                                      child: Text('Collect Now',style: TextStyle(
                                        color: whiteColor,fontSize: 13.sp
                                      ),),
                                    ),
                                  )
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      )
                    ],
                  );
                })











              ],
            ),
          ),
        ),
      ),
    );
  }
}
