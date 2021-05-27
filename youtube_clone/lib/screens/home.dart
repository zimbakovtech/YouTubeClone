import 'package:flutter/material.dart';
import 'package:youtube_clone/lists.dart';

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
            elevation: 0.0,
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
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
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
          Container(
            height: 300.0,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/linus.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List suggestionList() {
    List<Widget> suggestions = [];

    for (int i = 0; i < 12; i++) {
      suggestions.add(suggestion(suggestionsNames[i]));
      suggestions.add(SizedBox(width: 6.0));
    }

    return suggestions;
  }

  Container suggestion(String text) {
    return Container(
      height: 20.0,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
