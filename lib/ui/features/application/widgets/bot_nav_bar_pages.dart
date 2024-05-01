import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_ecommerce/ui/features/cart/view/cart_page.dart';
import 'package:mobile_ecommerce/ui/features/categories/view/categories_page.dart';
import 'package:mobile_ecommerce/ui/features/home/view/home_page.dart';

class ApplicationPageBelongings {
  static Widget botNavBarPages(int index) {
    switch (index) {
      case 0:
        return const HomePage();

      case 1:
        return  CategoriesPage();

      case 2:
        return const CartPage();

      default:
        return const Scaffold(
          body: Center(
            child: Text("Nothing is here"),
          ),
        );
    }
  }

  static List<BottomNavigationBarItem> botNavBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.house), label: "Home"),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.category_rounded,
          size: 25,
        ),
        label: "Categories"),
    const BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.cartShopping), label: "Cart"),
  ];
}
