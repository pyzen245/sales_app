import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';
import 'package:sales_app/constants/decoration.dart';
import 'package:sales_app/screens/login_screen.dart';
import 'package:sales_app/widgets/roundCornerShape.dart';

class TermsandConditions extends StatefulWidget {
  @override
  _TermsandConditionsState createState() => _TermsandConditionsState();
}




class _TermsandConditionsState extends State<TermsandConditions> with WidgetsBindingObserver{
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

        title: Text('Terms and Conditions',style: TextStyle(color: bluecolor,fontSize: 27.sp),),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Material(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [

                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 27.w,right: 27.w,top: 30.h),
                  child: Text(
                    "Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim",style: TextStyle(
                      color: privacypolicy,fontSize: 14.sp,
                      height: 1.2,
                      letterSpacing: 2
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