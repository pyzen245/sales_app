
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/colors.dart';



class ViewDecoration{
  static InputDecoration inputDecorationWithCurve(
      String fieldname ,{Widget? prefixIcon,Widget? suffixIcon}) {
    return InputDecoration(
        prefixIcon: prefixIcon==null?null:prefixIcon,
        suffixIcon: suffixIcon==null?null:suffixIcon,
        hintText: fieldname,
        filled: true,
        hintStyle: textRegular(blackcolor, 18.sp),
        isDense: true,

        fillColor: greycolor,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: greycolor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(20.r))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: greycolor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(20.r))),
        focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: greycolor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(20.r))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(6.r))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 0.7),
            borderRadius: BorderRadius.all(Radius.circular(6.r))));
  }















  static TextStyle textRegular(Color color, double textSize) {
    return TextStyle(
        color: color,
        fontFamily: "Gilroy",
        fontWeight: FontWeight.w500,
        fontSize: textSize);
  }

  static TextStyle textFieldStyle(double size) {
    return TextStyle(
        color: blackcolor,
        fontFamily: "Normal",
        fontWeight: FontWeight.w400,
        fontSize: size);
  }



}