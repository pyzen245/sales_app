import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';
import 'package:sales_app/constants/decoration.dart';
import 'package:sales_app/screens/bottom_navigation.dart';
import 'package:sales_app/screens/login_screen.dart';
import 'package:sales_app/screens/navigation_drawer.dart';
import 'package:sales_app/screens/payment_screen.dart';
import 'package:sales_app/screens/privacy_policy.dart';
import 'package:sales_app/screens/termsandconditions.dart';
import 'package:sales_app/screens/total_collection.dart';
import 'package:sales_app/widgets/roundCornerShape.dart';

class PaymentSuccess extends StatefulWidget {
  @override
  _PaymentSuccessState createState() =>
      _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess>
    with WidgetsBindingObserver {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

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

      key: scaffoldKey,
      appBar: AppBar(



        backgroundColor: whiteColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 0.w, right: 0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  height: 1.h,
                ),
                 Divider(
                   color: Color(0xffE5E5E5),
                   thickness: 1,
                 ),
                SizedBox(
                  height: 204.h,
                ),
                Center(
                  child: Column(
                    children: [
                      Image.asset('assets/success.png'),
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 51.0,right: 52),
                        child: Text('Payment successfully completed',style: TextStyle(
                          color: blackcolor,fontSize: 24.sp
                        ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back,color: Color(0xff007AFF),),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Go back to the store',style: TextStyle(
                            color: Color(
                                0xff007AFF
                            ),
                            fontSize: 15.sp
                          ),
                          )
                        ],
                      )
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
