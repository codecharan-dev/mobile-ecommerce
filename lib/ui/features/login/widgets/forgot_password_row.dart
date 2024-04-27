import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ecommerce/utils/colors.dart';
import 'package:mobile_ecommerce/utils/widgets.dart';

Widget buildForgotPasswordRow({required VoidCallback onPressed, required VoidCallback onTap,
}) {
  return Container(
    margin: const EdgeInsets.only(right: 15, left: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: onPressed,
          child: buildreuableText(
            text: "Forgot Password?",
            fontSize: 13.sp,
            color: AppColors.secondaryTextColor,
            fontWeight: FontWeight.normal,
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              const Icon(Icons.check_box_outline_blank),
              buildreuableText(
                text: "Keep me signed in",
                fontSize: 13.sp,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
