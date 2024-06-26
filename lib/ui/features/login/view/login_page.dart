import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_ecommerce/ui/features/login/widgets/forgot_password_row.dart';
import 'package:mobile_ecommerce/ui/features/login/widgets/or_text.dart';
import 'package:mobile_ecommerce/ui/features/login/widgets/reusable_button.dart';
import 'package:mobile_ecommerce/utils/app_route_constant.dart';
import 'package:mobile_ecommerce/utils/colors.dart';
import 'package:mobile_ecommerce/utils/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      end: Alignment.bottomCenter,
                      colors: [
                         AppColors.primaryColor2,
                        AppColors.primaryColor2,
                      ],
                    ),
                  ),
                ),
              ),),
            SingleChildScrollView(
              child:  Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: buildreuableText(
                        text: "Sign in",
                        fontSize: 30.sp,
                        color: AppColors.primaryTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h ),
                    child: buildreuableText(
                      text: "Login to your account",
                      fontSize: 15.sp,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w,40.h, 15.w, 95.h),
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
                          hintText: "Username or E-mail",
                          obsecureText: false,
                          prefixIcon: Icons.person,
                        ),
                        buildReusableTextFormFieldForPassword(
                          top: 18.h,
                          hintText: "Password",
                          obsecureText: true,
                          prefixIcon: Icons.key,
                          suffixIcon: Icons.remove_red_eye,
                          onPressed: () {},
                        ),
                        buildForgotPasswordRow(
                          onPressed: () {},
                          onTap: () {},
                        ),
                        buildReusableButton(
                          onPressed: () {
                            
                          },
                          top: 16.h,
                          backgroundColor: AppColors.primaryColor,
                          shadowColor: AppColors.primaryColor.withOpacity(0.5),
                          buttonName: "SIGN IN",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                        orText(),
                        buildReusableOauthButton(
                          backgroundColor: AppColors.teritaryColor,
                          shadowColor: AppColors.teritaryColor.withOpacity(0.5),
                          buttonName: "LOGIN WITH FACEBOOK",
                          fontWeight: FontWeight.normal,
                          fontSize: 16.sp,
                          icon: FontAwesomeIcons.facebook,
                        ),
                        buildReusableOauthButton(
                          backgroundColor: AppColors.fourthColor,
                          shadowColor: AppColors.fourthColor.withOpacity(0.5),
                          buttonName: "LOGIN WITH GOOGLE",
                          fontWeight: FontWeight.normal,
                          fontSize: 16.sp,
                          icon: FontAwesomeIcons.google,
                        ),
                        dontAndAlreadyHaveAnAccountRow(
                          buildTextFontsize: 16.sp,
                          fontSize: 16.sp,
                          left: 32.w,
                          top: 20.h,
                          text: "Don't have an account",
                          buttonName: "Sign up Now!",
                          onTap: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              AppRouteConstant.signUpPage,
                                  (route) => false,
                            );
                          },
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget build1(BuildContext context) {
  //   // back container
  //   // text
  //   return Scaffold(
  //     body: Container(
  //       margin: EdgeInsets.only(left: 0.w),
  //       child: SingleChildScrollView(
  //         child: Column(
  //           children: [
  //             Stack(
  //               children: [
  //                 Container(
  //                   padding: EdgeInsets.only(top: 55.h, left: 130.w),
  //                   height: 320.h,
  //                   width: 360.w,
  //                   color: AppColors.primaryColor,
  //                   child: buildreuableText(
  //                     text: "Sign in",
  //                     fontSize: 30.sp,
  //                     color: AppColors.primaryTextColor,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //                 Container(
  //                   padding: EdgeInsets.only(top: 95.h, left: 104.w),
  //                   child: buildreuableText(
  //                     text: "Login to your account",
  //                     fontSize: 15.sp,
  //                     color: AppColors.primaryTextColor,
  //                     fontWeight: FontWeight.normal,
  //                   ),
  //                 ),
  //                 Container(
  //                   margin: EdgeInsets.fromLTRB(15.w, 145.h, 15.w, 95.h),
  //                   decoration: BoxDecoration(
  //                     boxShadow: [
  //                       BoxShadow(
  //                         color: Colors.black.withOpacity(0.2),
  //                         offset: Offset(1.w, 1.h),
  //                         blurRadius: 7,
  //                         spreadRadius: 2,
  //                       ),
  //                     ],
  //                     borderRadius: BorderRadius.circular(15.w),
  //                     color: Colors.white,
  //                   ),
  //                   child: Column(
  //                     children: [
  //                       buildReusableTextFormField(
  //                         top: 30.h,
  //                         hintText: "Username or E-mail",
  //                         obsecureText: false,
  //                         prefixIcon: Icons.person,
  //                       ),
  //                       buildReusableTextFormFieldForPassword(
  //                         top: 18.h,
  //                         hintText: "Password",
  //                         obsecureText: true,
  //                         prefixIcon: Icons.key,
  //                         suffixIcon: Icons.remove_red_eye,
  //                         onPressed: () {},
  //                       ),
  //                       buildForgotPasswordRow(
  //                         onPressed: () {},
  //                         onTap: () {},
  //                       ),
  //                       buildReusableButton(
  //                         top: 16.h,
  //                         backgroundColor: AppColors.primaryColor,
  //                         shadowColor: AppColors.primaryColor.withOpacity(0.5),
  //                         buttonName: "SIGN IN",
  //                         fontWeight: FontWeight.bold,
  //                         fontSize: 20.sp,
  //                       ),
  //                       orText(),
  //                       buildReusableOauthButton(
  //                         backgroundColor: AppColors.teritaryColor,
  //                         shadowColor: AppColors.teritaryColor.withOpacity(0.5),
  //                         buttonName: "LOGIN WITH FACEBOOK",
  //                         fontWeight: FontWeight.normal,
  //                         fontSize: 16.sp,
  //                         icon: FontAwesomeIcons.facebook,
  //                       ),
  //                       buildReusableOauthButton(
  //                         backgroundColor: AppColors.fourthColor,
  //                         shadowColor: AppColors.fourthColor.withOpacity(0.5),
  //                         buttonName: "LOGIN WITH GOOGLE",
  //                         fontWeight: FontWeight.normal,
  //                         fontSize: 16.sp,
  //                         icon: FontAwesomeIcons.google,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 dontAndAlreadyHaveAnAccountRow(
  //                   buildTextFontsize: 16.sp,
  //                   fontSize: 16.sp,
  //                   left: Platform.isAndroid ? 50.w : 38.w,
  //                   top: 620.h,
  //                   text: "Don't have an account",
  //                   buttonName: "Sign up Now!",
  //                   onTap: () {
  //                     Navigator.pushNamedAndRemoveUntil(
  //                       context,
  //                       AppRouteConstant.signUpPage,
  //                       (route) => false,
  //                     );
  //                   },
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
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
