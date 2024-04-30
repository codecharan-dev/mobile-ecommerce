import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ecommerce/utils/app_route_constant.dart';
import 'package:mobile_ecommerce/utils/colors.dart';
import 'package:mobile_ecommerce/utils/widgets.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 0.w),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipPath(
                clipper: SlopeClipper(),
                child: Container(
                  width: double.maxFinite,
                  height: 500,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.primaryColor2,
                        AppColors.primaryColor2,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: buildreuableText(
                        text: "Sign Up",
                        fontSize: 30.sp,
                        color: AppColors.primaryTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: buildreuableText(
                      text: "Create new account",
                      fontSize: 15.sp,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 40.h, 15.w, 95.h),
                    padding: const EdgeInsets.only(bottom: 20),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        buildReusableTextFormField(
                          top: 30.h,
                          hintText: "Name",
                          obsecureText: false,
                          prefixIcon: Icons.person,
                        ),
                        buildReusableTextFormField(
                          top: 15.h,
                          hintText: "Username or E-mail",
                          obsecureText: false,
                          prefixIcon: Icons.email,
                        ),
                        buildReusableTextFormField(
                          top: 15.h,
                          hintText: "Phone Number",
                          obsecureText: false,
                          prefixIcon: Icons.phone,
                        ),
                        buildReusableTextFormFieldForPassword(
                          top: 15.h,
                          hintText: "Password",
                          obsecureText: true,
                          prefixIcon: Icons.key,
                          suffixIcon: Icons.remove_red_eye,
                          onPressed: () {},
                        ),
                        buildReusableTextFormFieldForPassword(
                          top: 15.h,
                          hintText: "Confrim Password",
                          obsecureText: true,
                          prefixIcon: Icons.key,
                          suffixIcon: Icons.remove_red_eye,
                          onPressed: () {},
                        ),
                        dontAndAlreadyHaveAnAccountRow(
                          buildTextFontsize: 16.sp,
                          fontSize: 16.sp,
                          left: 25.w,
                          top: 20.h,
                          text: "Don't have an account",
                          buttonName: "Sign in Now!",
                          onTap: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              AppRouteConstant.logInPage,
                              (route) => false,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            buildReusableButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRouteConstant.applicationPage,
                  (route) => false,
                );
              },
              top: 586.h,
              backgroundColor: AppColors.primaryColor,
              shadowColor: AppColors.primaryColor.withOpacity(0.5),
              buttonName: "SIGN UP",
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}

class SlopeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 200);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
