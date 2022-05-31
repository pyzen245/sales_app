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

class CollectionModule extends StatefulWidget {
  @override
  _CollectionModuleState createState() =>
      _CollectionModuleState();
}

class _CollectionModuleState extends State<CollectionModule>
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

        leading: IconButton(
          onPressed: () {
Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: whiteColor,
          ),
        ),

        backgroundColor: bluecolor,
        title: Text(
          'Collection Module',
          style: TextStyle(color: whiteColor, fontSize: 20.sp),
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
                  height: 23.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 38.h,
                      width:274.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: wholesalecontainer,
                        border: Border.all(color: Color(0xffA9A9A9))
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 10,right: 1),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.search,color: bluecolor,)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    Image.asset('assets/filter.png')

                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                ListView.builder(
                  shrinkWrap: true,
                    itemCount: 4,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context,i){

                  return Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(PageRouteBuilder(
                              opaque: false,
                              pageBuilder: (BuildContext context, _, __) {
                                return PaymentScreen();
                              }
                          ));
                        },
                        child: Container(
                          height: 150.h,
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
                                    Text('Unused Ammount Rs 0',style: TextStyle(
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
                                    Text('Payment No: 48416150',style: TextStyle(
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
                                    Text('Jan 7, 2021',style: TextStyle(
                                        color: Color(0xff666565),fontSize: 13.sp
                                    ),),
                                    Spacer(),
                                    Icon(Icons.messenger,color: blackcolor,size: 20,),
                                    SizedBox(
                                      width: 12.w,
                                    ),
                                    Image.asset('assets/car.png'),
                                    SizedBox(
                                      width: 12.w,
                                    ),
                                    Image.asset('assets/whatsapp.png')
                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      )
                    ],
                  );
                }),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 47.h,
                      width: 47.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: bluecolor
                      ),
                      child: Center(
                        child: Icon(Icons.add,color: whiteColor,size: 20,),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),














              ],
            ),
          ),
        ),
      ),
    );
  }
}
