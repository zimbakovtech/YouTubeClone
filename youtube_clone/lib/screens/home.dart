import 'package:flutter/material.dart';

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
          AppBar(
            backgroundColor: Colors.grey[900],
            title: Row(
              children: [
                Container(
                  height: 18.0,
                  width: 25.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/youtube.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'YouTube',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      letterSpacing: -1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.cast_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.notifications_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () {},
              ),
              Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/dm.jpg'),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container suggestion(String text) {
    return Container(
      child: Text(text),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
