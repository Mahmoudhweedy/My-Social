import 'package:flutter/material.dart';
import 'package:socialApp/data/data.dart';
import 'package:socialApp/widgets/bottom_navigation.dart';
import 'package:socialApp/widgets/custom_drawer.dart';

import 'package:socialApp/widgets/following_bar.dart';
import 'package:socialApp/widgets/posts_page_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        centerTitle: true,
        title: Text(
          'TOGETHER',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 10,
          ),
        ),
        bottom: TabBar(
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(fontSize: 18.0),
          indicatorWeight: 3.0,
          indicatorColor: Theme.of(context).primaryColor,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: 'Trending',
            ),
            Tab(text: 'Latest'),
          ],
        ),
      ),
      drawer: CustomDrawer(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          FollowingBar(),
          PostsPageView(
            posts: posts,
            title: 'Posts',
            pageController: _pageController,
          ),
        ],
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
