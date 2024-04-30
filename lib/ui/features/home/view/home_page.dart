import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/ui/features/home/widgets/home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(),
      body: Column(
        children: [
          Container()
        ],
      ),
    );
  }
}
