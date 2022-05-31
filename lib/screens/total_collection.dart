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

class TotalCollection extends StatefulWidget {
  @override
  _TotalCollectionState createState() =>
      _TotalCollectionState();
}

class _TotalCollectionState extends State<TotalCollection>
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
                  height: 59.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0,right: 4),
                  child: Row(
                    children: [
                      Text('Total Number Of Bills',style: TextStyle(
                        color: blackcolor,fontSize: 20.sp
                      ),),
                      Spacer(),
                      Icon(Icons.filter_list_alt,color: bluecolor,size: 25,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                Container(
                  height: 219.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: wholesalecontainer
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 13.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 15.0,right: 18),
                        child: Row(
                          children: [
                            Text('Lorem Ipsum',style: TextStyle(
                              color: blackcolor,
                              fontSize: 16.sp
                            ),),
                            Spacer(),
                            Text(' Rs.30,000',style: TextStyle(
                              color: blackcolor,fontSize: 13.sp
                            ),)

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 19.0),
                        child: Text('Bal: Rs. 21598',style: TextStyle(
                          color: blackcolor,fontSize: 13.sp
                        ),textAlign: TextAlign.end,),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: 7.0,right: 1),
                        child: Divider(
                          color: Color(0xffC8C5C5),
                          thickness: 1,
                        ),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Date Jan 4, 2021',style: TextStyle(
                              color: Color(0xff666565),fontSize: 13.sp
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding
                        (
                        padding:  EdgeInsets.only(left: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Bill No. 7',style: TextStyle(
                                color: Color(0xff666565),fontSize: 13.sp
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0,left: 18),
                        child: Row(
                          children: [
                            Text('Due Date: Jan 7, 2021',style: TextStyle(
                                color: Color(0xff666565),fontSize: 13.sp
                            ),),
                            Spacer(),
                            Container(
                              height: 26.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(color: bluecolor)
                              ),
                              child: Center(
                                child: Text('Partially Paid',style: TextStyle(
                                  color: blackcolor,fontSize: 13.sp
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0,right: 17),
                        child: Container(
                          height: 32.h,
                          width: 299.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: bluecolor
                          ),
                          child: Center(
                            child: Text('Pay Now',style: TextStyle(
                              color: whiteColor,fontSize: 13.sp
                            ),),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                  height: 170.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: wholesalecontainer
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 13.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 15.0,right: 18),
                        child: Row(
                          children: [
                            Text('Lorem Ipsum',style: TextStyle(
                                color: blackcolor,
                                fontSize: 16.sp
                            ),),
                            Spacer(),
                            Text(' Rs.30,000',style: TextStyle(
                                color: blackcolor,fontSize: 13.sp
                            ),)

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 19.0),
                        child: Text('Bal: 0',style: TextStyle(
                            color: blackcolor,fontSize: 13.sp
                        ),textAlign: TextAlign.end,),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: 7.0,right: 1),
                        child: Divider(
                          color: Color(0xffC8C5C5),
                          thickness: 1,
                        ),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Date Jan 4, 2021',style: TextStyle(
                                color: Color(0xff666565),fontSize: 13.sp
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding
                        (
                        padding:  EdgeInsets.only(left: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Bill No. 7',style: TextStyle(
                                color: Color(0xff666565),fontSize: 13.sp
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0,left: 18),
                        child: Row(
                          children: [
                            Text('Due Date: Jan 7, 2021',style: TextStyle(
                                color: Color(0xff666565),fontSize: 13.sp
                            ),),
                            Spacer(),
                            Container(
                              height: 26.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(color: bluecolor)
                              ),
                              child: Center(
                                child: Text(' Paid',style: TextStyle(
                                    color: blackcolor,fontSize: 13.sp
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),



                    ],
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                  height: 170.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: wholesalecontainer
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 13.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 15.0,right: 18),
                        child: Row(
                          children: [
                            Text('Lorem Ipsum',style: TextStyle(
                                color: blackcolor,
                                fontSize: 16.sp
                            ),),
                            Spacer(),
                            Text(' Rs.30,000',style: TextStyle(
                                color: blackcolor,fontSize: 13.sp
                            ),)

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 19.0),
                        child: Text('Bal: 0',style: TextStyle(
                            color: blackcolor,fontSize: 13.sp
                        ),textAlign: TextAlign.end,),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: 7.0,right: 1),
                        child: Divider(
                          color: Color(0xffC8C5C5),
                          thickness: 1,
                        ),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Date Jan 4, 2021',style: TextStyle(
                                color: Color(0xff666565),fontSize: 13.sp
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding
                        (
                        padding:  EdgeInsets.only(left: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Bill No. 7',style: TextStyle(
                                color: Color(0xff666565),fontSize: 13.sp
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0,left: 18),
                        child: Row(
                          children: [
                            Text('Due Date: Jan 7, 2021',style: TextStyle(
                                color: Color(0xff666565),fontSize: 13.sp
                            ),),
                            Spacer(),
                            Container(
                              height: 26.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(color: bluecolor)
                              ),
                              child: Center(
                                child: Text(' Paid',style: TextStyle(
                                    color: blackcolor,fontSize: 13.sp
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),



                    ],
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                  height: 170.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: wholesalecontainer
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 13.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 15.0,right: 18),
                        child: Row(
                          children: [
                            Text('Lorem Ipsum',style: TextStyle(
                                color: blackcolor,
                                fontSize: 16.sp
                            ),),
                            Spacer(),
                            Text(' Rs.30,000',style: TextStyle(
                                color: blackcolor,fontSize: 13.sp
                            ),)

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 19.0),
                        child: Text('Bal: 0',style: TextStyle(
                            color: blackcolor,fontSize: 13.sp
                        ),textAlign: TextAlign.end,),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: 7.0,right: 1),
                        child: Divider(
                          color: Color(0xffC8C5C5),
                          thickness: 1,
                        ),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Date Jan 4, 2021',style: TextStyle(
                                color: Color(0xff666565),fontSize: 13.sp
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding
                        (
                        padding:  EdgeInsets.only(left: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Bill No. 7',style: TextStyle(
                                color: Color(0xff666565),fontSize: 13.sp
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0,left: 18),
                        child: Row(
                          children: [
                            Text('Due Date: Jan 7, 2021',style: TextStyle(
                                color: Color(0xff666565),fontSize: 13.sp
                            ),),
                            Spacer(),
                            Container(
                              height: 26.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(color: bluecolor)
                              ),
                              child: Center(
                                child: Text(' Paid',style: TextStyle(
                                    color: blackcolor,fontSize: 13.sp
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),



                    ],
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
