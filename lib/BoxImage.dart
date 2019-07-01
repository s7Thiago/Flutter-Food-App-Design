import 'package:flutter/material.dart';

class BoxImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: Colors.black12,
        height: 200,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.asset(
                "assets/images/table_backgound.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 80,
                right: 280,
                child: Material(
                  borderRadius: BorderRadius.circular(200),
                  elevation: 10,
                  child: Image.asset(
                    "assets/images/plate1.png",
                    width: 200,
                  ),
                )),
            Positioned(
              right: 120,
              left: 100,
              top: 80,
              child: Material(
                  borderRadius: BorderRadius.circular(200),
                  elevation: 10,
                  child: Image.asset("assets/images/plate2.png", width: 300)),
            ),
            Positioned(
              left: 250,
              top: 100,
              child: Image.asset(
                "assets/images/plate3.png",
                width: 190,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
