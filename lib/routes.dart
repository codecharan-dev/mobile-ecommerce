import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/ui/features/application/view/application_page.dart';
import 'package:mobile_ecommerce/ui/features/login/view/login_page.dart';
import 'package:mobile_ecommerce/ui/features/login/view/signup_page.dart';
import 'package:mobile_ecommerce/utils/app_route_constant.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRouteForMyApp(RouteSettings myAppRouteSettings) {
    
    switch (myAppRouteSettings.name) {
      // Log In page navigation
      case AppRouteConstant.logInPage:
        return MaterialPageRoute(builder: (context) => const LoginPage());

      // Sign Up page navigation
      case AppRouteConstant.signUpPage:
        return MaterialPageRoute(builder: (context) => const SignupPage());

      // Application Page page navigation
      case AppRouteConstant.applicationPage:
        return MaterialPageRoute(builder: (context) => const ApplicationPage());


      // default
      default:
    }
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('dummy'),
        ),
        body: const Center(
          child: Text("dummy page"),
        ),
      ),
    );
  }
}
