import 'package:design_practice3/CustomButton.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  double mainContainerHeight = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mainContainerHeight,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.width * 0.015)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Icon(Icons.search),
          ),
          Flexible(
            child: TextField(
              decoration:
                  InputDecoration.collapsed(hintText: "Search for dishes"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: CustomButton(
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
