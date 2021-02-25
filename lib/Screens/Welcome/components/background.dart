import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child
  }) :super(key: key);

  @override 
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center, // set main png
        children: <Widget>[
          Positioned(
            top: 0,// set main_top
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,//set main_bottom
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width:size.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}

