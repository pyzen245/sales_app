import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';
import 'package:sales_app/constants/decoration.dart';
import 'package:sales_app/screens/bottom_navigation.dart';
import 'package:sales_app/screens/login_screen.dart';
import 'package:sales_app/screens/privacy_policy.dart';
import 'package:sales_app/screens/termsandconditions.dart';
import 'package:sales_app/widgets/roundCornerShape.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}




class _SignUpScreenState extends State<SignUpScreen> with WidgetsBindingObserver{
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
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/login_background1.png'),
                  Positioned(

                      left: 36,
                      bottom: 200,
                      child:GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios,color: whiteColor,))
                  ),
                  Positioned(

                    left: 36,
                    right: 20,
                    top: 121,
                    bottom: 0,
                    child:Text('Create',style: TextStyle(
                        color: Colors.white,fontSize: 46.sp
                    ),),
                  ),
                  Positioned(

                    left: 36,
                    right: 20,
                    top: 184,
                    bottom: 35,
                    child:Text('Account',style: TextStyle(
                        color: Colors.white,fontSize: 46.sp
                    ),),
                  )


                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 36.w,right: 36.w),
                child: RoundCornerShape(
                  height: 60.h,
                  bgColor: greycolor,
                  topRightradius: 20.r,
                  topleftradius: 20.r,
                  bottomRightradius: 20.r,
                  bottomleftradius: 20.r,

                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: TextFormField(

                      //cursorColor: ColorConstants.colorButtonbgColor,
                      style: ViewDecoration.textFieldStyle(
                          18.sp),
                      decoration: ViewDecoration.inputDecorationWithCurve(
                          'Name'
                      ),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 36.w,right: 36.w),
                child: RoundCornerShape(
                  height: 60.h,
                  bgColor: greycolor,
                  topRightradius: 20.r,
                  topleftradius: 20.r,
                  bottomRightradius: 20.r,
                  bottomleftradius: 20.r,

                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: TextFormField(

                      //cursorColor: ColorConstants.colorButtonbgColor,
                      style: ViewDecoration.textFieldStyle(
                          18.sp),
                      decoration: ViewDecoration.inputDecorationWithCurve(
                          'Your Email'
                      ),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 36.w,right: 36.w),
                child: RoundCornerShape(
                  height: 60.h,
                  bgColor: greycolor,
                  topRightradius: 20.r,
                  topleftradius: 20.r,
                  bottomRightradius: 20.r,
                  bottomleftradius: 20.r,

                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: TextFormField(

                      //cursorColor: ColorConstants.colorButtonbgColor,
                      style: ViewDecoration.textFieldStyle(
                          18.sp),
                      decoration: ViewDecoration.inputDecorationWithCurve(
                          'Password'
                      ),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 35.w),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _value = !_value;
                        });
                      },
                      child: Container(
                        height: 17.h,
                        width: 17.w,
                        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: bluecolor)),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: _value
                              ? Icon(
                            Icons.circle,
                            size: 10,
                            color: bluecolor,
                          )
                              : Icon(
                            Icons.check_box_outline_blank,
                            size: 10.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 9.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('I agree to Love Map',style: TextStyle(color: termscolor,fontSize: 14.sp),),
                            SizedBox(width: 2.w,),
                            GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TermsandConditions()));

                                },
                                child: Text('Terms and conditions',style: TextStyle(color: bluecolor,fontSize: 14.sp),)),

                          ],
                        ),
                        Row(
                          children: [
                            Text('And Have Read The',style: TextStyle(color: termscolor,fontSize: 14.sp),),
                            SizedBox(width: 2.w,),
                            GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrivacyPolicy()));

                                },
                                child: Text('Privacy Policy',style: TextStyle(color: bluecolor,fontSize: 14.sp),)),

                          ],
                        ),
                      ],
                    )

                  ],
                ),
              ),

              Stack(
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/login_background2.png'),
                      ],
                    ),
                    Positioned(
                        left: 275,

                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                          },
                          child: Container(
                            height: 62.h,
                            width: 64.w,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: bluecolor) ,
                            child: Icon(
                              Icons.arrow_forward,color: whiteColor,
                            ),
                          ),
                        )),
                    Positioned(
                        left: 36,
                        top: 15,

                        child: Text('Sign Up',style: TextStyle(color: blackcolor,fontSize: 32.sp),)
                    ),
                    Positioned(
                        left: 270,
                        top: 75,

                        child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));

                            },
                            child: Text('Sign In',style: TextStyle(color: blackcolor,fontSize: 18.sp),))
                    )
                  ]
              ),



            ],
          ),
        ),



      ),
    );
  }

}