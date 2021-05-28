import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(2.0),
          ),
          height: 32.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              cursorColor: Colors.white,
              autofocus: true,
              decoration: InputDecoration(
                hintTextDirection: TextDirection.ltr,
                hintText: 'Search YouTube',
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        actions: [
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.mic_none, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
