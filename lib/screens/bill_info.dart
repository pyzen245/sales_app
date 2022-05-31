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

class BillInfo extends StatefulWidget {
  @override
  _BillInfoState createState() =>
      _BillInfoState();
}

class _BillInfoState extends State<BillInfo>
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
                  height: 29.h,
                ),
                Center(
                  child: Image.asset('assets/bill.png'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Text('Your Bill Info',style: TextStyle(
                    color: Color(0xff24373D),fontSize: 20.sp
                  ),),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Center(
                  child: Text('We’ve fetched the details from your bill.Please verify the details',style: TextStyle(
                      color: Color(0xff24373D),fontSize: 16.sp
                  ),
                  textAlign: TextAlign.center,),
                ),
                SizedBox(
                  height: 57.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 10.0,right: 11),
                  child: Container(
                    height: 201.h,
                    decoration: BoxDecoration(
                      color: Color(0xffF9F9FF),
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(color: Color(0xff57AEFE))
                    ),
                    child: Column(
                      children: [

                        Container(
                          height: 50.h,
                          child: ListTile(
                            title: Text('Consumer Number',style: TextStyle(
                              color: billtextColor,fontSize: 8.sp
                            ),),
                            subtitle:  Text('102340000001242',style: TextStyle(
                                color: billtextColor,fontSize: 14.sp
                            ),
                            ),
                            trailing: Text('|  ||| |  |||| ||| |',style: TextStyle(
                                color: Color(0xff1E1E1E),fontSize: 14.sp
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),


                        Container(
                          height: 50.h,
                          child: ListTile(
                            title: Text('Bill Date',style: TextStyle(
                                color: billtextColor,fontSize: 8.sp
                            ),),
                            subtitle:  Text('30 Sep 2020',style: TextStyle(
                                color: billtextColor,fontSize: 14.sp
                            ),
                            ),

                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          height: 50.h,
                          child: ListTile(
                            title: Text('Due Amount',style: TextStyle(
                                color: billtextColor,fontSize: 8.sp
                            ),),
                            subtitle:  Text('₹ 2692.40',style: TextStyle(
                                color: billtextColor,fontSize: 14.sp
                            ),
                            ),
                            trailing: Image.asset('assets/kp.png')
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 26.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0,right: 0),
                  child: Container(
                    height: 26.h,
                    child: ListTile(
                      title: Text('Board Name',style: TextStyle(
                        color: billtextColor,fontSize: 16.sp
                      ),),
                      trailing: Text('KPS Pvt. Ltd.',style: TextStyle(
                          color: billtextColor,fontSize: 16.sp
                      ),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 26.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0,right: 0),
                  child: Container(
                    height: 26.h,
                    child: ListTile(
                      title: Text('Section Name',style: TextStyle(
                          color: billtextColor,fontSize: 16.sp
                      ),),
                      trailing: Text('HSR Layout',style: TextStyle(
                          color: billtextColor,fontSize: 16.sp
                      ),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0,right: 0),
                  child: Container(
                    height: 26.h,
                    child: ListTile(
                      title: Text('Consumer Name',style: TextStyle(
                          color: billtextColor,fontSize: 16.sp
                      ),),
                      trailing: Text('Ronald Richards',style: TextStyle(
                          color: billtextColor,fontSize: 16.sp
                      ),),
                    ),
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
