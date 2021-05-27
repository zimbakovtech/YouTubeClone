import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/add.dart';
import 'package:youtube_clone/screens/explore.dart';
import 'package:youtube_clone/screens/home.dart';
import 'package:youtube_clone/screens/library.dart';
import 'package:youtube_clone/screens/subscriptions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Home(),
          Explore(),
          Add(),
          Subscriptions(),
          Library(),
        ],
      ),
      bottomNavigationBar: TabBar(
        indicatorColor: Colors.transparent,
        controller: _tabController,
        tabs: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 40.0,
              child: Column(
                children: [
                  Icon(_currentIndex == 0
                      ? Icons.home_filled
                      : Icons.home_outlined),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 9.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 40.0,
              child: Column(
                children: [
                  Icon(_currentIndex == 1
                      ? Icons.explore
                      : Icons.explore_outlined),
                  Text(
                    'Explore',
                    style: TextStyle(fontSize: 9.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 40.0,
              child: Center(
                child: Icon(
                  Icons.add_circle_outline,
                  size: 35.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 40.0,
              child: Column(
                children: [
                  Icon(_currentIndex == 3
                      ? Icons.subscriptions
                      : Icons.subscriptions_outlined),
                  Text(
                    'Subscriptions',
                    style: TextStyle(fontSize: 7.4),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 40.0,
              child: Column(
                children: [
                  Icon(_currentIndex == 4
                      ? Icons.library_add
                      : Icons.library_add_outlined),
                  Text(
                    'Library',
                    style: TextStyle(fontSize: 9.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
