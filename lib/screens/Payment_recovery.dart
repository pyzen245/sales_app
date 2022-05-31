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

class PaymentRecovery extends StatefulWidget {
  @override
  _PaymentRecoveryState createState() =>
      _PaymentRecoveryState();
}

class _PaymentRecoveryState extends State<PaymentRecovery>
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
    return SafeArea(
      child: Scaffold(

        key: scaffoldKey,

        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 98.h,
                  color: bluecolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0,right: 28),
                        child: Row(
                          children: [
                            Text('Payment Recovery',style: TextStyle(
                              color: whiteColor,fontSize: 20.sp
                            ),),
                            Spacer(),
                            Text('Download',style: TextStyle(
                              color: whiteColor,fontSize: 16.sp
                            ),),
                            SizedBox(
                              width: 7.w,
                            ),
                            Icon(Icons.download_outlined,color: whiteColor,size: 20,)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 28.0),
                        child: Row(
                          children: [
                            Text('Last update on16/5/2022',style: TextStyle(
                              color: whiteColor,fontSize: 14.sp
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 20.0,right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50.h,
                            width:266.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: wholesalecontainer,
                                border: Border.all(color: Color(0xffA9A9A9))
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 10,right: 1,bottom: 7),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search Companies',
                                    hintStyle: TextStyle(
                                      color: blackcolor,fontSize: 13.sp
                                    ),
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.search,color: bluecolor,size: 20,)
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 9.w,
                          ),
                          Container(
                            height: 50.h,
                            width: 56.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: wholesalecontainer,
                              border: Border.all(color: Color(0xffA9A9A9))
                            ),
                            child: Center(
                              child: Icon(Icons.filter_list_alt,color: bluecolor,),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 17.h,
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
                                  child: Text('Detailed Summary',style: TextStyle(
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
                                  child: Text('Ageing Summary',style: TextStyle(
                                      color: blackcolor,fontSize: 16.sp
                                  ),),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      ListView.builder(
                        itemCount: 2,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context,i){
                        return Column(
                          children: [
                            Container(
                              height: 234.h,
                              width: 333.w,
                              decoration: BoxDecoration(
                                color: wholesalecontainer,
                                borderRadius: BorderRadius.circular(10.r),

                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 21.h,
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 16.0),
                                    child: Text('Ryan Associates Pvt. Ltd.',style: TextStyle(
                                        color: blackcolor,fontSize: 16.sp
                                    ),),
                                  ),
                                  SizedBox(
                                    height: 21.h,
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 16.0,right: 25),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 36.h,
                                          width: 144.w,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: bluecolor
                                              ),
                                              borderRadius: BorderRadius.circular(20.r)
                                          ),
                                          child: Center(
                                            child: Text('Set Auto Reminder',style: TextStyle(
                                                color: bluecolor,fontSize: 13.sp
                                            ),),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 46.w,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Medium Priority',style: TextStyle(
                                                color: Color(0xffFD7900),
                                                fontSize: 14.sp
                                            ),),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text('Rs.  24,149',style: TextStyle(
                                                color: blackcolor,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold
                                            ),),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Text('Due',style: TextStyle(
                                                color: Color(0xff5E5B5B),
                                                fontSize: 14.sp
                                            ),)

                                          ],
                                        ),
                                        SizedBox(
                                          height: 21.h,
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Divider(
                                    color: Color(0xff8F8F8F),
                                    thickness: 1,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 11,right: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('Oldest Due',style: TextStyle(
                                                color: Color(0xff494847),fontSize: 14.sp
                                            ),),
                                            SizedBox(
                                              height: 15.h,
                                            ),
                                            Text('400 Days',style: TextStyle(
                                                color: blackcolor,fontSize: 14.sp
                                            ),),


                                          ],
                                        ),
                                        SizedBox(
                                          width: 26.w,
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('Avg. Collection',style: TextStyle(
                                                color: Color(0xff494847),fontSize: 14.sp
                                            ),),
                                            SizedBox(
                                              height: 15.h,
                                            ),
                                            Text('0 Days',style: TextStyle(
                                                color: blackcolor,fontSize: 14.sp
                                            ),),


                                          ],
                                        ),
                                        SizedBox(
                                          width: 19.w,
                                        ),

                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('Credit Period',style: TextStyle(
                                                color: Color(0xff494847),fontSize: 14.sp
                                            ),),
                                            SizedBox(
                                              height: 15.h,
                                            ),
                                            Text('30 Days',style: TextStyle(
                                                color: blackcolor,fontSize: 14.sp
                                            ),),


                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 33.h,
                            )
                          ],
                        );
                      })


                    ],
                  ),
                ),












              ],
            ),
          ),
        ),
      ),
    );
  }
}
