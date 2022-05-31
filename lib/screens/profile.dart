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

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() =>
      _ProfileState();
}

class _ProfileState extends State<Profile>
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
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 54.h,
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_back_outlined,color: Color(0xff5F5F5F),size: 25,),
                    SizedBox(
                      width: 40.w,
                    ),
                    Text(
                      'Personal information',style: TextStyle(
                      color: blackcolor,fontSize: 20.sp
                    ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                SizedBox(
                  height: 17.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:0.0),
                  child: Text('Home address',style: TextStyle(
                    color: blackcolor,fontSize: 20.sp
                  ),),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 122.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [
                          Text('First name',style: TextStyle(
                            color: blackcolor,fontSize: 12.sp
                          ),),

                          Container(
                            width: 122.w,
                            child: TextField(
                              enabled: false,
                              readOnly: true,
                              decoration: InputDecoration(
                                labelText: 'Jessica',
                                labelStyle: TextStyle(
                                  color: blackcolor,fontSize: 16.sp
                                )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    Container(
                      width: 122.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [
                          Text('Last name',style: TextStyle(
                              color: blackcolor,fontSize: 12.sp
                          ),),

                          Container(
                            width: 122.w,
                            child: TextField(
                              enabled: false,

                              readOnly: true,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xff2F80ED)),
                                  ),
                                  labelText: 'Salzman|',
                                  labelStyle: TextStyle(
                                      color: Color(0xff2F80ED),fontSize: 16.sp
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),


                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text('Default name',style: TextStyle(
                  color: blackcolor,fontSize: 12.sp
                ),),
                SizedBox(
                  height: 6.h,
                ),
                TextField(
                  readOnly: true,
                  enabled: false,

                  decoration: InputDecoration(
                      labelText: '303 Meadowview Drive',
                      labelStyle: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      )
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 68.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [
                          Text('Zip',style: TextStyle(
                              color: blackcolor,fontSize: 12.sp
                          ),),

                          Container(
                            width: 122.w,
                            child: TextField(
                              enabled: false,

                              readOnly: true,
                              decoration: InputDecoration(
                                  labelText: '24175',
                                  labelStyle: TextStyle(
                                      color: blackcolor,fontSize: 16.sp
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    Container(
                      width: 152.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [
                          Text('City',style: TextStyle(
                              color: blackcolor,fontSize: 12.sp
                          ),),

                          Container(
                            width: 152.w,
                            child: TextField(
                              enabled: false,

                              readOnly: true,
                              decoration: InputDecoration(

                                  labelText: 'Troutville',
                                  labelStyle: TextStyle(
                                      color: blackcolor,fontSize: 16.sp
                                  )
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      width: 60.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [
                          Text('State',style: TextStyle(
                              color: blackcolor,fontSize: 12.sp
                          ),),

                          Container(
                            width: 60.w,
                            child: TextField(
                              enabled: false,

                              readOnly: true,
                              decoration: InputDecoration(

                                  labelText: 'VA',
                                  labelStyle: TextStyle(
                                      color: blackcolor,fontSize: 16.sp
                                  )
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 43.h,
                ),
                Text('Financial information',style: TextStyle(
                  color: blackcolor,fontSize: 20.sp
                ),),
                SizedBox(
                  height: 26.h,
                ),
                Text('Default name',style: TextStyle(
                    color: blackcolor,fontSize: 12.sp
                ),),
                SizedBox(
                  height: 6.h,
                ),
                TextField(
                  readOnly: true,
                  enabled: false,

                  decoration: InputDecoration(
                      labelText: 'Input caption',
                      labelStyle: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      )
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 180.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [
                          Text('Default name',style: TextStyle(
                              color: blackcolor,fontSize: 12.sp
                          ),),

                          Container(
                            width: 180.w,
                            child: TextField(
                              readOnly: true,
                              enabled: false,

                              decoration: InputDecoration(
                                  labelText: 'Input caption',
                                  labelStyle: TextStyle(
                                      color: blackcolor,fontSize: 16.sp
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Container(
                      width: 124.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [
                          Text('Default name',style: TextStyle(
                              color: blackcolor,fontSize: 12.sp
                          ),),

                          Container(
                            width: 124.w,
                            child: TextField(
                              enabled: false,
                              readOnly: true,
                              decoration: InputDecoration(

                                  labelText: 'Input caption',
                                  labelStyle: TextStyle(
                                      color: blackcolor,fontSize: 16.sp
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),


                  ],
                ),
                SizedBox(
                  height: 130.h,
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),

                        color: bluecolor
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Center(
                          child: Text('SUBMIT',style: TextStyle(
                              color: whiteColor,fontSize: 20.sp
                          ),),
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                )










              ],
            ),
          ),
        ),
      ),
    );
  }
}
