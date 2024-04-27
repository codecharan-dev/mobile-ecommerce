import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ecommerce/utils/colors.dart';
import 'package:mobile_ecommerce/utils/widgets.dart';

Widget buildReusableOauthButton({
  required Color backgroundColor,
  required Color shadowColor,
  required String buttonName,
  required FontWeight fontWeight,
  required double fontSize,
  required IconData icon,
}) {
  return Container(
    margin: EdgeInsets.only(left: 18.w, right: 18.w, top: 20.h),
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
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 25.w),
            buildreuableText(
              text: buttonName,
              fontSize: fontSize,
              color: AppColors.primaryTextColor,
              fontWeight: fontWeight,
            ),
          ],
        ),
      ),
    ),
  );
}
