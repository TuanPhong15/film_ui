import 'package:film_ui/views/popular_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Popular'),
    Tab(text: 'NowPlaying'),
    Tab(text: 'Upcoming'),
    Tab(text: 'Top Rate'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
          labelStyle: const TextStyle(
              fontFamily: "Comfortaa",
              fontSize: 24,
              fontWeight: FontWeight.bold),
          indicatorColor: Colors.black,
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
          labelPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 2),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black.withOpacity(0.5),
          isScrollable: true,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const PopularView(),
          Container(
            color: Colors.red,
          ),
           Container(
            color: Colors.blue,
          ),
           Container(
            color: Colors.green,
          )
        ]
      ),
    );
  }
}
