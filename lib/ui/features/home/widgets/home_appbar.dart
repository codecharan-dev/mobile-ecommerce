import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_ecommerce/ui/features/home/widgets/reusable_text.dart';
import 'package:mobile_ecommerce/utils/colors.dart';
import 'package:mobile_ecommerce/utils/image_constants.dart';
import 'package:mobile_ecommerce/utils/widgets.dart';

AppBar homeAppbar() {
  return AppBar(
    bottom: searchForProducts(),
    toolbarHeight: 70.h,
    backgroundColor: AppColors.fifthColor,
    automaticallyImplyLeading: false,
    elevation: 5,
    title: Row(
      // Total row
      children: [
        // Circle avatar
        customCircleAvatar(),
        SizedBox(width: 7.w),
        // Deliver in 5 min column
        deliveryInFiveMinColumn(),
      ],
    ),
  );
}

PreferredSize searchForProducts() {
  return PreferredSize(
    preferredSize: Size.fromHeight(50.h),
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.primaryTextColor,
        borderRadius: BorderRadius.circular(11.w),
      ),
      margin:
          EdgeInsets.only(top: 5.h, left: 18.w, right: 18.w, bottom: 10.h),
      height: 47.h,
      width: 360.w,
      child: TextFormField(
        cursorColor: AppColors.secondaryTextColor,
        decoration: InputDecoration(
          hintText: "Search for Products",
          prefixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.w),
            borderSide: const BorderSide(
                color: AppColors.secondaryTextColor, width: 1.5),
          ),
          contentPadding: EdgeInsets.only(
              left: 10.w, right: 10.w, top: 12.h, bottom: 15.h),
          border: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.secondaryTextColor, width: 1.5.w),
            borderRadius: BorderRadius.circular(10.w),
          ),
        ),
      ),
    ),
  );
}

Widget customCircleAvatar() {
  return CircleAvatar(
    radius: 21.w,
    child: Container(
      height: 52.h,
      width: 53.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImagesConstants.person_icon),
        ),
        color: AppColors.sixthColor,
        shape: BoxShape.circle,
      ),
    ),
  );
}

Widget deliveryInFiveMinColumn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      // Top row in eliver in 5 min column

      Row(
        children: [
          buildreuableText(
            text: "Delivery in ",
            fontSize: 18.sp,
            color: AppColors.sixthColor,
            fontWeight: FontWeight.bold,
          ),
          buildreuableText(
            text: "5 Mins",
            fontSize: 18.sp,
            color: AppColors.seventhColor,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),

      // Bottom row in eliver in 5 min column

      Row(
        children: [
          Container(
            margin: EdgeInsets.zero,
            width: 170.w,
            child: buildHomereuableText(
              textOverflow: TextOverflow.ellipsis,
              text: "Park Town - periyamet veppery Hi",
              fontSize: 12.sp,
              color: AppColors.sixthColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              FontAwesomeIcons.chevronDown,
              size: 16,
            ),
          ),
        ],
      ),
    ],
  );
}
