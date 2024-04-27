import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ecommerce/utils/colors.dart';

// Reusable Text

Widget buildreuableText({
  required String text,
  required double fontSize,
  required Color color,
  required FontWeight fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}

// Reusable Button

Widget buildReusableButton({
  required Color backgroundColor,
  required Color shadowColor,
  required String buttonName,
  required FontWeight fontWeight,
  required double fontSize,
  required double top,
}) {
  return Container(
    margin: EdgeInsets.only(left: 18.w, right: 18.w, top: top),
    child: Material(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: shadowColor,
          elevation: 5,
          minimumSize: Size.fromHeight(48.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: backgroundColor,
          foregroundColor: AppColors.secondaryColor,
        ),
        onPressed: () {},
        child: buildreuableText(
          text: buttonName,
          fontSize: fontSize,
          color: AppColors.primaryTextColor,
          fontWeight: fontWeight,
        ),
      ),
    ),
  );
}

// Reusable Text Form Field

Widget buildReusableTextFormField({
  required double top,
  required String hintText,
  required bool obsecureText,
  required IconData prefixIcon,
}) {
  return Container(
    margin: EdgeInsets.only(top: top, left: 20.w, right: 20.w),
    height: 48.h,
    width: 330.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7.w),
    ),
    child: TextFormField(
      obscureText: obsecureText,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.w),
          borderSide:
              const BorderSide(color: AppColors.primaryColor, width: 1.5),
        ),
        contentPadding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 18.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      ),
    ),
  );
}

// Reusable Text Form Field for Password

Widget buildReusableTextFormFieldForPassword({
  required double top,
  required String hintText,
  required bool obsecureText,
  required IconData prefixIcon,
  required IconData suffixIcon,
  required VoidCallback onPressed,
}) {
  return Container(
    margin: EdgeInsets.only(top: top, left: 20.w, right: 20.w),
    height: 48.h,
    width: 330.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7.w),
    ),
    child: TextFormField(
      obscureText: obsecureText,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(suffixIcon),
        ),
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.w),
          borderSide:
              const BorderSide(color: AppColors.primaryColor, width: 1.5),
        ),
        contentPadding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 18.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      ),
    ),
  );
}

// Don't and already have an account

Widget dontAndAlreadyHaveAnAccountRow({
  required VoidCallback onTap,
  required String text,
  required String buttonName,
  required double top,
  required double left,
  required double fontSize,
  required double buildTextFontsize,
}) {
  return Container(
    margin: EdgeInsets.only(top: top, left: left),
    child: Row(
      children: [
        buildreuableText(
          text: text,
          fontSize: buildTextFontsize,
          color: AppColors.secondaryTextColor,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(width: 5.w),
        InkWell(
          onTap: onTap,
          child: buildreuableText(
            text: buttonName,
            fontSize: fontSize,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}
