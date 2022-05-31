import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';
import 'package:sales_app/constants/decoration.dart';
import 'package:sales_app/screens/login_screen.dart';
import 'package:sales_app/widgets/roundCornerShape.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}




class _ForgotPasswordState extends State<ForgotPassword> with WidgetsBindingObserver{
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

        title: Text('Forgot Password',style: TextStyle(color: bluecolor,fontSize: 27.sp),),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,


          children: [

            SizedBox(
              height: 48.h,
            ),
            Center(
              child: Container(
                height: 219.h,
                width: 219.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffF3F3F3)
                ),
                child: Center(
                  child: Image.asset('assets/lock.png'),
                ),
              ),
            ),
            SizedBox(
              height: 113.h,
            ),
            Padding(
                padding:  EdgeInsets.only(left: 18.w,right: 17.w),
                child: Container(
                  height: 57.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: bluecolor),
                      color: whiteColor
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 31.0),
                    child: TextFormField(

                      //cursorColor: ColorConstants.colorButtonbgColor,
                      decoration: InputDecoration(
                        hintText: 'Enter your Email or Phone number',
                        hintStyle: TextStyle(
                            color: bluecolor,fontSize: 18.sp
                        ),
                        border: InputBorder.none,

                      ),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                )
            ),
            SizedBox(
              height: 28.h,
            ),
            Padding(
                padding:  EdgeInsets.only(left: 18.w,right: 17.w),
                child: Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),

                      color: bluecolor
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Center(
                        child: Text('Continue',style: TextStyle(
                            color: whiteColor,fontSize: 18.sp
                        ),),
                      )
                  ),
                )
            ),





          ],
        ),
      ),
    );
  }

}