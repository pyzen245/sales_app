import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';
import 'package:sales_app/constants/decoration.dart';
import 'package:sales_app/screens/bill_info.dart';
import 'package:sales_app/screens/bottom_navigation.dart';
import 'package:sales_app/screens/login_screen.dart';
import 'package:sales_app/screens/navigation_drawer.dart';
import 'package:sales_app/screens/privacy_policy.dart';
import 'package:sales_app/screens/termsandconditions.dart';
import 'package:sales_app/widgets/roundCornerShape.dart';

class WholesalersandRetailers extends StatefulWidget {
  @override
  _WholesalersandRetailersState createState() =>
      _WholesalersandRetailersState();
}

class _WholesalersandRetailersState extends State<WholesalersandRetailers>
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
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color:containercolor,
                      border: Border.all(color: containerborder)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 13),
                    child: TextField(
                      style: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      ),
                      decoration:  InputDecoration(

                        border: InputBorder.none,
                        hintText: 'ShopKeeper name \*',
                        hintStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                        labelStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color:containercolor,
                      border: Border.all(color: containerborder)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 13),
                    child: TextField(
                      style: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      ),
                      decoration:  InputDecoration(

                        border: InputBorder.none,
                        hintText: 'Address \*',
                        hintStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                        labelStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color:containercolor,
                      border: Border.all(color: containerborder)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 13),
                    child: TextField(
                      style: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      ),
                      decoration:  InputDecoration(

                        border: InputBorder.none,
                        hintText: 'Phone Number \*',
                        hintStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                        labelStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color:containercolor,
                      border: Border.all(color: containerborder)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 13),
                    child: TextField(
                      style: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      ),
                      decoration:  InputDecoration(

                        border: InputBorder.none,
                        hintText: 'Email-ID \*',
                        hintStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                        labelStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color:containercolor,
                      border: Border.all(color: containerborder)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 13),
                    child: TextField(
                      style: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      ),
                      decoration:  InputDecoration(

                        border: InputBorder.none,
                        hintText: 'Shop name \*',
                        hintStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                        labelStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color:containercolor,
                      border: Border.all(color: containerborder)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 13),
                    child: TextField(
                      readOnly: true,
                      style: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      ),
                      decoration:  InputDecoration(
                        suffixIcon: Icon(Icons.arrow_drop_down_sharp,color: blackcolor,),
                        border: InputBorder.none,
                        hintText: 'Type of shop',
                        hintStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                        labelStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color:containercolor,
                      border: Border.all(color: containerborder)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 13),
                    child: TextField(
                      style: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      ),
                      decoration:  InputDecoration(

                        border: InputBorder.none,
                        hintText: 'Geo Location \*',
                        hintStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                        labelStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color:containercolor,
                      border: Border.all(color: containerborder)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 13),
                    child: TextField(
                      style: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      ),
                      decoration:  InputDecoration(

                        border: InputBorder.none,
                        hintText: 'Beat name \*',
                        hintStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                        labelStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color:containercolor,
                      border: Border.all(color: containerborder)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 13),
                    child: TextField(
                      style: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      ),
                      decoration:  InputDecoration(

                        border: InputBorder.none,
                        hintText: 'Sales rep \*',
                        hintStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                        labelStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color:containercolor,
                      border: Border.all(color: containerborder)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 13),
                    child: TextField(
                      style: TextStyle(
                          color: blackcolor,fontSize: 16.sp
                      ),
                      decoration:  InputDecoration(

                        border: InputBorder.none,
                        hintText: 'Landmark',
                        hintStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                        labelStyle: TextStyle(
                            color: blackcolor,fontSize: 16.sp
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 141.h,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BillInfo()));
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
