import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';
import 'package:sales_app/constants/decoration.dart';
import 'package:sales_app/screens/bottom_navigation.dart';
import 'package:sales_app/screens/login_screen.dart';
import 'package:sales_app/screens/navigation_drawer.dart';
import 'package:sales_app/screens/payment_success.dart';
import 'package:sales_app/screens/privacy_policy.dart';
import 'package:sales_app/screens/termsandconditions.dart';
import 'package:sales_app/widgets/roundCornerShape.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() =>
      _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen>
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
     backgroundColor: Color(0xff1E1E1E),
      key: scaffoldKey,
      appBar: AppBar(



        backgroundColor: Color(0xff1E1E1E),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Color(0xff1E1E1E),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 17.w, right: 17.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: wholesalecontainer,
                    border: Border.all(color: Color(0xffA9A9A9))
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 27.0,bottom: 4),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Select Area',
                        hintStyle: TextStyle(
                          color: blackcolor,fontSize: 14.sp
                        ),
                        suffixIcon: Icon(Icons.arrow_drop_down,color: blackcolor,)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 88.h,
                ),
                Text('Mode Of Payment',style: TextStyle(
                  color: whiteColor,fontSize: 20.sp
                ),),
                Divider(
                  color: whiteColor,
                  thickness: 1,
                ),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Text('UI Unicorn Store',style: TextStyle(
                      color: whiteColor,fontSize: 14.sp
                    ),),
                    Spacer(),
                    Text('Order №070490',style: TextStyle(
                      color: whiteColor,fontSize: 14.sp
                    ),)
                  ],
                ),
                SizedBox(
                  height: 60.h,
                ),
                Text('Pay by bank card',style: TextStyle(
                  color: whiteColor,fontSize: 11.sp
                ),),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: Color(0xffF2F2F2)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Card Number',
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                        fontSize: 17.sp
                      ),
                      prefixIcon: Icon(Icons.credit_card_outlined,color: Color(0xffCCCCCC),)
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xffE5E5E5),
                ), SizedBox(
                  height: 32.h,
                ),
                Text('Ohter payment methods',style: TextStyle(
                    color: whiteColor,fontSize: 11.sp
                ),),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentSuccess()));
                      },
                        child: Image.asset('assets/apple_pay.png')),
                    SizedBox(width: 5.w,),
                    Image.asset('assets/stripe.png'),
                    SizedBox(width: 5.w,),
                    Image.asset('assets/paypal.png'),
                    SizedBox(width: 5.w,),
                    Image.asset('assets/bitcoin.png'),

                  ],
                )














              ],
            ),
          ),
        ),
      ),
    );
  }
}
