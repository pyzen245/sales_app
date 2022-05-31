import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';
import 'package:sales_app/constants/decoration.dart';
import 'package:sales_app/screens/home_page.dart';
import 'package:sales_app/screens/notifications.dart';
import 'package:sales_app/screens/privacy_policy.dart';
import 'package:sales_app/screens/sign_up.dart';
import 'package:sales_app/screens/termsandconditions.dart';
import 'package:sales_app/widgets/roundCornerShape.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}




class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver{
  bool _value = true;
  int _selectedIndex = 0;

  List<Widget> _options = <Widget>[
    HomePage(),
    Notifications(),

  ];

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
      bottomNavigationBar: BottomNavigationBar(
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image.asset('assets/homeicon.png'),
                label: '',
                backgroundColor: whiteColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: '',
                backgroundColor: whiteColor),
            BottomNavigationBarItem(
                icon: Image.asset('assets/bottom2.png'),
                label: '',
                backgroundColor: whiteColor),
            BottomNavigationBarItem(
              icon: Image.asset('assets/bottom3.png'),
              label: '',
              backgroundColor: Color(0xffEF2323),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/bottom4.png'),
              label: '',
              backgroundColor: whiteColor,
            ),

          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: bluecolor,
          showUnselectedLabels: true,
          unselectedItemColor: bottomnavigation,
          iconSize: 30,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;


            });
          },
          elevation: 5),
      body: SafeArea(
        child: _options.elementAt(_selectedIndex),
      ),
    );
  }

}