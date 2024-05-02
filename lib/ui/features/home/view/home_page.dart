import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          /// This Section will animate
          SliverPersistentHeader(
            delegate: MyDelegate(),
            pinned: true,
          ),

          /// Normal scroll section
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 1500,
                  padding: const EdgeInsets.all(13),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1 / 1.5,
                          crossAxisSpacing: 10,
                    ),
                    itemCount: 110,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Colors.red,
                            height: 90,
                            width: double.maxFinite,
                          ),
                          const SizedBox(
                            width: 80,
                            child: Text(
                              'Arun Double Chocolate Ice',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.yellow,
                            height: 20,
                          ),
                        ],
                      );
                    },
                  ),
                ),

                // GridListView
              ],
            ),
          )
        ],
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
      begin: const Alignment(-1, -0.3),
      end: const Alignment(-1, -5),
    );
    return Container(
      padding: EdgeInsets.only(top: 0),
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
