import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: categoriesAppbar(),
      body: Container(
        margin: EdgeInsets.only(left: 8.w, right: 8.w),
        child: categoriesGrids(),
      ),
    );
  }

  // categories grids

  GridView categoriesGrids() {
    return GridView.builder(
        itemCount: 55,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 140,
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          // childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            margin: EdgeInsets.only(left: 0.5.w, right: 0.5.w),
            //color: Colors.yellow,
            child: categoriesContainer(),
          );
        },
      );
  }

  // containers of categories in each grids

  Widget categoriesContainer() {
    return Container(
      padding: EdgeInsets.only(right: 5.w),
      height: 150,
    // color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70.h,
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.w),
              color: Colors.purple,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.h),
            padding: EdgeInsets.only(left: 10.w),
            width: 90,
            // color: Colors.green,
            child: Text(
              maxLines: 2,
              "  Fruits & vegetables",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }

  // app bar

  AppBar categoriesAppbar() {
    return AppBar(
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20.sp,
            ),
          ),
        ),
      ],
      automaticallyImplyLeading: false,
      title: Text(
        "All categories",
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
      ),
    );
  }
}
