import 'package:design_practice3/BoxImage.dart';
import 'package:design_practice3/CategoriesBar.dart';
import 'package:design_practice3/SearchBar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: BoxImage(),
          ),
          SearchBar(),
          Align(
              heightFactor: 2.5,
              alignment: Alignment.centerLeft,
              child: Text(
                "Choose today's dishes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              )),
          CategoriesBar(
            itens: [
              CategoriesBarItem(),
              CategoriesBarItem(),
              CategoriesBarItem(),
              CategoriesBarItem(),
              CategoriesBarItem(),
              CategoriesBarItem(),
              CategoriesBarItem(),
              CategoriesBarItem(),
              CategoriesBarItem(),
              CategoriesBarItem(),
              CategoriesBarItem(),
            ],
          ),
        ],
      ),
    );
  }
}
