import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: categoriesAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 470.h,
              // color: Colors.yellow,
              margin: EdgeInsets.only(left: 13.w, right: 13.w, top: 13.h),
              child: categoriesGrids(),

              /// categories grids using gridView builder called here
            ),
            exploreNewCategoriesSection(),

            /// Explore new categories section called here
          ],
        ),
      ),
    );
  }

  /// Explore new categories section

  Widget exploreNewCategoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 13.w, top: 7.h),
          child: Text(
            "Explore New Categories",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          //color: Colors.green,
          padding: EdgeInsets.only(left: 13.w, top: 1.h, right: 13.w),
          height: 120.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 13,
            itemBuilder: (context, index) {
              return newCategoriesColumn();

              /// categories column under the explore new categories circle chape and names in row which is scrollable and list view byiler used.
            },
          ),
        )
      ],
    );
  }

  /// categories column under the explore new categories cirle chape and names in row which is scrollable and list view byiler used.

  Widget newCategoriesColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5.w),
          height: 85.h,
          width: 85.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 18.w),
          //color: Colors.green,
          width: 90.w,
          child: Text(
            maxLines: 2,
            "  Fruits & vegetables",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }

  /// categories grids

  Widget categoriesGrids() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 16,
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
          // color: Colors.green,
          child: categoriesContainer(),
        );
      },
    );
  }

  /// containers of categories in each grids

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

  // APp bAr

  AppBar categoriesAppbar() {
   
    return AppBar(
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(),
              );
            },
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 16.sp,
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


class MySearchDelegate extends SearchDelegate<String> {

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, "");
          } else {
            query = "";
          }
        },
        icon: Icon(
          Icons.clear,
          size: 20.sp,
        ),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        return close(context, "");
      },
      icon: Icon(
        Icons.arrow_back,
        size: 20.sp,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(query,);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = ["fruits", "veggies", "groceries", "sanitary"];
    List<String> filteredSuggestions = suggestions
        .where((suggestion) =>
            suggestion.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: filteredSuggestions.length,
      itemBuilder: (context, index) {
        final suggestion = filteredSuggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
          },
        );
      },
    );
  }
}
