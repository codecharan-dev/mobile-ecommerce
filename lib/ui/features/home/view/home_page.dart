import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/ui/features/home/widgets/home_appbar.dart';
import 'package:mobile_ecommerce/ui/features/home/widgets/special_offer_for_you.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(),
      body: Column(
        children: [
          specialOfferForYouContainer(),
          
        ],
      ),
    );
  }
}



