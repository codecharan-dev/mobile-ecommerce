import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ecommerce/utils/colors.dart';
import 'package:mobile_ecommerce/utils/widgets.dart';

Widget specialOfferForYouContainer() {
  return Column(
    children: [
      Stack(
        children: [
          // ************************************************************
          Container(
            margin: EdgeInsets.only(top: 15.h, left: 10.w, right: 10.w),
            height: 110.h,
            width: 360.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.w),
              gradient: const RadialGradient(
                colors: [AppColors.seventhColor, AppColors.primaryColor],
                center: Alignment.bottomRight,
                radius: 2,
              ),
            ),
          ),
          // ************************************************************
          Container(
            margin: EdgeInsets.only(top: 65.h, left: 30.w),
            height: 50.h,
            width: 300.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.w),
              color: AppColors.primaryTextColor,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildreuableText(
                    text: "\u20B920 free cash".toUpperCase(),
                    fontSize: 18.sp,
                    color: AppColors.seventhColor,
                    fontWeight: FontWeight.bold,
                  ),
                  buildreuableText(
                    text: "credited in your wallet",
                    fontSize: 14.sp,
                    color: AppColors.seventhColor,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ),
          ),
          // ************************************************************
          Container(
            margin: EdgeInsets.only(top: 25.h, left: 68.w),
            child: buildreuableText(
              text: "Special offer for you!",
              fontSize: 20.sp,
              color: AppColors.primaryTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      // ************************************************************
      Center(
        child: Container(
          margin: EdgeInsets.only(top: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildreuableText(
                text: "Trending in",
                fontSize: 20.sp,
                color: AppColors.sixthColor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(width: 5.w),
              buildreuableText(
                text: "Otteri",
                fontSize: 20.sp,
                color: AppColors.seventhColor,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
