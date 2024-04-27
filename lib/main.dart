import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ecommerce/routes.dart';
import 'package:mobile_ecommerce/ui/features/login/view/login_page.dart';
import 'package:mobile_ecommerce/utils/app_route_constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        onGenerateRoute: AppRoutes.onGenerateRouteForMyApp,
        initialRoute: AppRouteConstant.logInPage,
      ),
    );
  }
}


// echo "# mobile-ecommerce" >> README.md
// git init
// git add README.md
// git commit -m "first commit"
// git branch -M main
// git remote add origin https://github.com/codecharan-dev/mobile-ecommerce.git
// git push -u origin main
