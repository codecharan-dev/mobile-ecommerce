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
        initialRoute: AppRouteConstant.applicationPage,
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


// import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'AppBarWithSearch demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'AppBarWithSearch widget main'),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;
//   final searchText = ValueNotifier<String>('');
//   final words = ("There is no justice in the laws of nature, no term for fairness in the equations of motion. "
//           "The Universe is neither evil, nor good, it simply does not care. "
//           "The stars don't care, or the Sun, or the sky. "
//           "But they don't have to! WE care! There IS light in the world, and it is US! "
//           "Why does any kind of cynicism appeal to people? Because it seems like a mark of maturity, of sophistication, like you’ve seen everything and know better. "
//           "Or because putting something down feels like pushing yourself up. "
//           "There is light in the world, and it is us! "
//           "World domination is such an ugly phrase. I prefer to call it world optimisation. ")
//       .split(' ');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //
//       // *** The Widget AppBarWithSearchSwitch
//       //
//       appBar: AppBarWithSearchSwitch(
//         onChanged: (text) {
//           searchText.value = text;
//         },
//         // onSubmitted: (text) {
//         //   searchText.value = text;
//         // },
//         animation: AppBarAnimationSlideLeft.call,
//         // animation: (child) => AppBarAnimationSlideLeft(
//         //     milliseconds: 400, withFade: false, percents: 0.25, child: child),
//         appBarBuilder: (context) {
//           return AppBar(
//             title: Text(title),
//             actions: const [
//               // AppBarSpeechButton(),  // in version 2.0+
//               AppBarSearchButton(),
//               // or
//               // IconButton(onPressed: AppBarWithSearchSwitch.of(context)?startSearch, icon: Icon(Icons.search)),
//             ],
//           );
//         },
//       ),
//       //
//       // > Just some random code to react to input from AppBarWithSearchSwitch.
//       //
//       body: Center(
//         child: SingleChildScrollView(
//           child: AnimatedBuilder(
//             animation: Listenable.merge([
//               searchText,
//             ]),
//             builder: (BuildContext context, _) {
//               return Wrap(
//                 children: [
//                   for (var i = 0; i < words.length; i++)
//                     if (words[i].contains(searchText.value))
//                       SizedBox(
//                         height: 110,
//                         width: 110,
//                         child: Card(
//                           child: Column(
//                             children: [
//                               Expanded(
//                                 child: Center(
//                                   child: Text(
//                                     words[i],
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .headlineSmall,
//                                     textAlign: TextAlign.center,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
