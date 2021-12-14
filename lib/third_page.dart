import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
            length: 3,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoIsScrolled) => [
                SliverAppBar(
                  pinned: false,
                  expandedHeight: 250.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: const Text('Goa', textScaleFactor: 1),
                    background: Image.network(
                      'https://img.freepik.com/free-vector/cartoon-summer-beach-paradise-nature-vacation-ocean-sea-seashore-seaside-landscape-background-illustration_102902-1385.jpg?size=626&ext=jpg',
                      fit: BoxFit.fill,
                    ),
                    stretchModes: const [StretchMode.zoomBackground],
                  ),
                  //collapsedHeight: 100,
                ),
                SliverPersistentHeader(
                  floating: true,
                  delegate: MySliverPersistentHeaderDelegate(
                    const TabBar(
                      labelColor: Colors.pink,
                      tabs: [
                        Tab(icon: Icon(Icons.flight)),
                        Tab(icon: Icon(Icons.directions_transit)),
                        Tab(icon: Icon(Icons.directions_car)),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ],
              body: const TabBarView(
                children: [
                  Icon(Icons.flight, size: 350),
                  Icon(Icons.directions_transit, size: 350),
                  Icon(Icons.directions_car, size: 350),
                ],
              ),
            )),
      ),
    );
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  MySliverPersistentHeaderDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.black.withOpacity(0.3),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
