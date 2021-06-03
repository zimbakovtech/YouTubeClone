import 'package:flutter/material.dart';
import 'package:youtube_clone/models.dart';

class Subscriptions extends StatefulWidget {
  @override
  _SubscriptionsState createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80.0,
                width: MediaQuery.of(context).size.width - 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: storyList(),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 80.0,
                width: 50.0,
                color: Colors.grey[900],
                child: TextButton(
                  child: Text(
                    'ALL',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
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
