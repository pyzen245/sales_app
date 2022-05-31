import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';
import 'package:sales_app/constants/decoration.dart';
import 'package:sales_app/screens/Payment_recovery.dart';
import 'package:sales_app/screens/home_page.dart';
import 'package:sales_app/screens/login_screen.dart';
import 'package:sales_app/screens/profile.dart';
import 'package:sales_app/screens/wholesalers.dart';
import 'package:sales_app/screens/wholesalersandretailers.dart';
import 'package:sales_app/widgets/roundCornerShape.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}




class _NavigationDrawerState extends State<NavigationDrawer> with WidgetsBindingObserver{
  bool _value = true;
  List navitems=['Home','MyAccount','My Orders','Shopping Cart','wholesalers','Wholesalers and Retailers','Payment Recovery'];
  List navicons=[Icons.home_outlined,Icons.person,Icons.call,Icons.directions_run,Icons.person,Icons.person,Icons.download_outlined];
  int index=0;

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

      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 201.h,
                width: 357.w
                ,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/profile_bacground.png'
                          ,
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 34.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 0.0),
                        child: Container(
                          height: 64.h,
                          width: 64.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: bluecolor),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/profile.png'
                                  ),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text('Jessica Shmitz',style: TextStyle(
                          color: whiteColor,fontSize: 14.sp
                      ),),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          Text('purchasenow@gmail.com',style: TextStyle(
                              color: whiteColor,fontSize: 14.sp
                          ),),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: Icon(Icons.arrow_drop_down,color: whiteColor,),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: navitems.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            index=i;
                          });
                          if(index==5){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => WholesalersandRetailers()));
                          }
                          if(index==1){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile()));
                          }
                          if(index==4){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Wholesalers()));
                          }
                          if(index==0){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                          }
                          if(i==6){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentRecovery()));
                          }
                        },
                        child: Container(
                          color: i!=index?Colors.white:containercolor,
                          //height: 48.h,
                          width: 326.w,
                          child: ListTile(
                            leading: Icon(navicons[i],color: naviconcolor,),
                            title: Text(navitems[i],style: TextStyle(color: blackcolor,fontSize: 14.sp),),
                            trailing:i==1?Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                color: bluecolor,
                                borderRadius: BorderRadius.circular(3.r),

                              ),
                              child: Center(
                                child: Container(
                                  height: 20.h,
                                  width: 40.w,
                                  child: Center(
                                    child: Text('18',style: TextStyle(
                                        color: whiteColor,fontSize: 14.sp
                                    ),),
                                  ),
                                ),
                              ),

                            ):i==4?Text('128',style: TextStyle(color: blackcolor,fontSize: 16.sp),):
                            Container(
                              height: 10,
                              width: 10,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                    ],
                  );
                },
              )




            ],
          ),
        ),
      ),
    );
  }

}