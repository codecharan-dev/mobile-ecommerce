import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ecommerce/utils/colors.dart';
import 'package:mobile_ecommerce/utils/widgets.dart';

Widget orText() {
  return Container(
    margin: EdgeInsets.only(top: 15.h),
    child: buildreuableText(
      text: "-----------------  or  ------------------",
      fontSize: 15.sp,
      color: AppColors.secondaryTextColor,
      fontWeight: FontWeight.normal,
    ),
  );
}
