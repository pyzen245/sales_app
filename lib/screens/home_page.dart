import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';
import 'package:sales_app/constants/decoration.dart';
import 'package:sales_app/screens/collection_module.dart';
import 'package:sales_app/screens/login_screen.dart';
import 'package:sales_app/screens/navigation_drawer.dart';
import 'package:sales_app/screens/total_collection.dart';
import 'package:sales_app/widgets/roundCornerShape.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}




class _HomePageState extends State<HomePage> with WidgetsBindingObserver{
  bool _value = true;
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
      key: scaffoldKey,
      backgroundColor: whiteColor,
      drawer: Drawer(
        child: NavigationDrawer(),
      ),
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
              decoration: BoxDecoration(
                  shape: BoxShape.circle,color: bluecolor
              ),
              child: Center(
                child: Icon(
                  Icons.search
                  ,color: whiteColor,
                  size: 20,
                ),
              ),
            ),
          )
        ],
        backgroundColor: whiteColor,

        title: Text('LOGO',style: TextStyle(color: bluecolor,fontSize: 24.sp),),
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
                  height: 22.h,
                ),
                Container(
                  height: 80.h,
                  color: containercolor,
                  child: Padding(
                    padding:  EdgeInsets.only(bottom:13.h),
                    child: ListTile(
                        title: Text('Hello,Samantha',style: TextStyle(
                            color: nameTextColor,fontSize: 18.sp
                        ),),
                        subtitle: Text('Find the service you want',style: TextStyle(
                            color: textcolor2,fontSize: 14.sp
                        ),),
                        trailing: Image.asset(''
                            'assets/person.png',height: 30,)
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                    height: 304.h,
                    color: containercolor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 21.w),
                          child: Text('listed firms',style: TextStyle(
                            color: blackcolor,fontSize: 15.sp,
                          ),),
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        Container(
                          height: 230.h,
                          child: GridView.builder(

                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 16),
                              itemBuilder: (_, index) {
                                return Column(
                                  children: [
                                    Container(
                                      height: 63.h,
                                      width: 63.w,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: bluecolor
                                      ),
                                      child: Center(
                                        child: Image.asset('assets/listed.png'),
                                      ),
                                    ),
                                    SizedBox(height: 13.h,),
                                    Text('Demo',style: TextStyle(
                                        color: blackcolor,fontSize: 14.sp
                                    ),)
                                  ],
                                );
                              },
                              itemCount: 8
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 13.h,
                ),
                Container(
                  height: 42.h,
                  color: bluecolor,
                  child: Center(
                    child: Text('Click Here For Account Verification',style: TextStyle(
                        color: whiteColor,fontSize: 16.sp
                    ),),
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                Container(
                  height: 60.h,
                  color: containercolor,
                  child: ListTile(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => TotalCollection()));
                    },
                    title: Text('Total Number of Bills',style: TextStyle(
                        color: bluecolor,fontSize: 15.sp
                    ),),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,size: 16,
                      color: bluecolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 60.h,
                  color: containercolor,
                  child: ListTile(
                    title: Text('Bill Value',style: TextStyle(
                        color: bluecolor,fontSize: 15.sp
                    ),),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,size: 16,
                      color: bluecolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 60.h,
                  color: containercolor,
                  child: ListTile(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => CollectionModule()));
                    },
                    title: Text('Total Collection',style: TextStyle(
                        color: bluecolor,fontSize: 15.sp
                    ),),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,size: 16,
                      color: bluecolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 60.h,
                  color: containercolor,
                  child: ListTile(
                    title: Text('Target – Total, achieved, pending',style: TextStyle(
                        color: bluecolor,fontSize: 15.sp
                    ),),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,size: 16,
                      color: bluecolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 60.h,
                  color: containercolor,
                  child: ListTile(
                    title: Text('Total pendency (Billing – Collection)',style: TextStyle(
                        color: bluecolor,fontSize: 15.sp
                    ),),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,size: 16,
                      color: bluecolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Stack(
                  children: [
                    Container(
                      height: 410.h,
                      color: containercolor,
                      child: Padding(
                        padding:  EdgeInsets.only(top: 23,left: 27,right: 27),
                        child: Column(
                          children: [
                            Container(
                              height: 270.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/Stats.png'
                                      ),
                                      fit: BoxFit.cover
                                  )
                              ),

                            ),
                            SizedBox(height: 4.h,),
                            Padding(
                              padding:  EdgeInsets.only(left: 6.w,right: 6.w),
                              child: Container(

                                height: 40.h,
                                child: Row(
                                  children: [
                                    Text('0',style: TextStyle(
                                        color: graphtextcolor,fontSize: 12.sp
                                    ),),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text('50',style: TextStyle(
                                        color: graphtextcolor,fontSize: 12.sp
                                    ),),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text('100',style: TextStyle(
                                        color: graphtextcolor,fontSize: 12.sp
                                    ),),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text('150',style: TextStyle(
                                        color: graphtextcolor,fontSize: 12.sp
                                    ),),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text('200',style: TextStyle(
                                        color: graphtextcolor,fontSize: 12.sp
                                    ),),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text('250',style: TextStyle(
                                        color: graphtextcolor,fontSize: 12.sp
                                    ),),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text('300',style: TextStyle(
                                        color: graphtextcolor,fontSize: 12.sp
                                    ),),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text('350',style: TextStyle(
                                        color: graphtextcolor,fontSize: 12.sp
                                    ),),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                  ],
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 24,
                        left: 28,
                        child: Text('Sales By Week',style: TextStyle(
                            color: blackcolor,fontSize: 17.sp
                        ),)),
                    Positioned(
                        top: 65,
                        left: 28,
                        child: Row(
                          children: [
                            Container(
                              height: 13.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  color: bluecolor,
                                  borderRadius: BorderRadius.all(Radius.circular(4.r))
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Text('Lorem Ipsum',style: TextStyle(
                                color: textcolor3,fontSize: 12.sp
                            ),),
                          ],
                        )
                    ),
                    Positioned(
                        top: 95,
                        left: 28,
                        child: Row(
                          children: [
                            Container(
                              height: 13.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  color: container1,
                                  borderRadius: BorderRadius.all(Radius.circular(4.r))
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Text('Lorem Ipsum',style: TextStyle(
                                color: textcolor3,fontSize: 12.sp
                            ),),
                          ],
                        )
                    ),
                    Positioned(
                        top: 125,
                        left: 28,
                        child: Row(
                          children: [
                            Container(
                              height: 13.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  color: container2,
                                  borderRadius: BorderRadius.all(Radius.circular(4.r))
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Text('Lorem Ipsum',style: TextStyle(
                                color: textcolor3,fontSize: 12.sp
                            ),),
                          ],
                        )
                    ),
                    Positioned(
                      top: 281,
                      left: 313,
                      child: Container(
                        height: 47.h,
                        width: 47.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: bluecolor
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),



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