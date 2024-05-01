import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/ui/features/home/widgets/home_appbar.dart';
import 'package:mobile_ecommerce/ui/features/home/widgets/special_offer_for_you.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build1(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(),
      body: Column(
        children: [
          specialOfferForYouContainer(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: MyDelegate(),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                statusSection(),
                bannerSection(),

              ],
            ),
          )
        ],
      ),
    );
  }

  Container bannerSection() {
    return Container(
                height: 120,
                color: Colors.black,
              );
  }

  Container statusSection() {
    return Container(
      color: Colors.red,
      height: 80,
      child: ListView.builder(
        itemCount: 5,
        padding: const EdgeInsets.only(left: 13),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 40,
            ),
          );
        },
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var progress = shrinkOffset / (maxExtent - minExtent);
    progress = progress > 0 ? progress : 0;
    progress = progress > 1 ? 1 : progress;
    final topContent = AlignmentTween(
        begin: const Alignment(-1, -0.3), end: const Alignment(-1, -5));
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.purpleAccent.shade100,
            Colors.white,
          ],
        ),
      ),
      child: Stack(
        children: [
          movingElement(topContent, progress),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 30,
              width: double.maxFinite,
              color: Colors.black,
              margin: const EdgeInsets.only(right: 13, left: 13),
            ),
          ),
        ],
      ),
    );
  }

  Align movingElement(AlignmentTween topContent, double progress) {
    return Align(
        alignment: topContent.lerp(progress),
        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              Container(
                height: 35,
                width: 35,
                margin: const EdgeInsets.only(left: 13),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 3, color: Colors.black),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.person,
                  size: 28,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery in 15 Mins',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                    Row(
                      children: [
                        Text(
                          'Other - Navalur, Tamil Nadu ',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.arrow_drop_down_outlined)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 110;

  @override
  // TODO: implement minExtent
  double get minExtent => 75;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
