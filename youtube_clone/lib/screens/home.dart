import 'package:flutter/material.dart';
import 'package:youtube_clone/models.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Divider(
              height: 1.0,
              color: Colors.grey[800],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Container(
              height: 25.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: suggestionList(),
              ),
            ),
          ),
          Column(
            children: videosList(),
          ),
        ],
      ),
    );
  }
}
