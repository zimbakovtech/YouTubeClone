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

  List suggestionList() {
    List<Widget> suggestions = [];

    for (int i = 0; i < 12; i++) {
      suggestions.add(suggestion(suggestionsNames[i]));
      suggestions.add(SizedBox(width: 6.0));
    }

    return suggestions;
  }

  List videosList() {
    List<Widget> videos = [];

    for (int x = 0; x < 3; x++) {
      for (int i = 0; i < 3; i++) {
        videos.add(video(i));
      }
    }

    return videos;
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

  Container video(int i) {
    return Container(
      height: 309.0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(videos[i].thumbnail),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0, bottom: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 20.0,
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            videos[i].duration,
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(videos[i].profile),
                        fit: BoxFit.contain,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      videos[i].title,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    Text(
                      '${videos[i].name} · ${videos[i].views > 999 ? videos[i].views ~/ 1000 : videos[i].views}${videos[i].views > 999 ? 'M views' : 'K views'} · ${videos[i].time > 59 ? videos[i].time ~/ 30 : videos[i].time > 29 ? 1 : videos[i].time > 13 ? videos[i].time ~/ 7 : videos[i].time > 6 ? 1 : videos[i].time} ${videos[i].time > 59 ? 'months ago' : videos[i].time > 29 ? 'month ago' : videos[i].time > 13 ? 'weeks ago' : videos[i].time > 6 ? 'week ago' : videos[i].time > 1 ? 'days ago' : 'day ago'} ',
                      style: TextStyle(color: Colors.grey[700], fontSize: 13.0),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  color: Colors.white,
                  iconSize: 20.0,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
