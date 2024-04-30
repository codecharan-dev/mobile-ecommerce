import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/ui/features/application/widgets/bot_nav_bar_pages.dart';
import 'package:mobile_ecommerce/utils/colors.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ApplicationPageBelongings.botNavBarPages(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: AppColors.teritaryTextColor,
        iconSize: 22,
        selectedItemColor: AppColors.primaryColor,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: ApplicationPageBelongings.botNavBarItems,
      ),
    );
  }
}
