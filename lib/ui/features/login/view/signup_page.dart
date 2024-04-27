import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ecommerce/utils/colors.dart';
import 'package:mobile_ecommerce/utils/widgets.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                 Container(
                    padding: EdgeInsets.only(top: 55.h, left: 118.w),
                    height: 320.h,
                    width: 360.w,
                    color: AppColors.primaryColor,
                    child: buildreuableText(
                      text: "Sign up",
                      fontSize: 30.sp,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 95.h, left: 106.w),
                    child: buildreuableText(
                      text: "Create new account",
                      fontSize: 15.sp,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 145.h, 15.w, 60.h),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(1.w, 1.h),
                          blurRadius: 7,
                          spreadRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15.w),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                         buildReusableTextFormField(
                          top: 30.h,
                          hintText: "Full Name",
                          obsecureText: false,
                          prefixIcon: Icons.person,
                        ),
                        buildReusableTextFormField(
                          top: 18.h,
                          hintText: "Username or E-mail",
                          obsecureText: false,
                          prefixIcon: Icons.email,
                        ),
                         buildReusableTextFormField(
                          top: 18.h,
                          hintText: "Phone Number",
                          obsecureText: false,
                          prefixIcon: Icons.phone,
                        ),
                        buildReusableTextFormFieldForPassword(
                          top: 18.h,
                          hintText: "Create Password",
                          obsecureText: true,
                          prefixIcon: Icons.key,
                          suffixIcon: Icons.remove_red_eye,
                          onPressed: () {},
                        ),
                        buildReusableTextFormFieldForPassword(
                          top: 18.h,
                          hintText: "Confrim Password",
                          obsecureText: true,
                          prefixIcon: Icons.key,
                          suffixIcon: Icons.remove_red_eye,
                          onPressed: () {},
                        ),
                        dontAndAlreadyHaveAnAccountRow(
                          buildTextFontsize: 14.sp,
                          fontSize: 14.sp,
                          left: Platform.isAndroid ? 38.w : 35.w,
                          top: 25.h,
                          onTap: () {},
                          text: "Already have an account",
                          buttonName: "Sign in Now!",
                        ),
                        
                      ],
                    ),
                  ),
                  buildReusableButton(
                    top: 595.h,
                    backgroundColor: AppColors.primaryColor,
                    shadowColor: AppColors.primaryColor.withOpacity(0.5),
                    buttonName: "SIGN UP",
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
