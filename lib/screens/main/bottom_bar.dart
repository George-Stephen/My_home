import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  VoidCallback onPressed;
  bool bottomIcons;
  String text;
  IconData icons;
  BottomBar(
        {required this.onPressed,
        required this.bottomIcons,
        required this.icons,
        required this.text});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onPressed,
        child: widget.bottomIcons == true
            ? Container(
          decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          child: Row(
            children: <Widget>[
              Icon(
                widget.icons,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                widget.text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
        )
            : Icon(widget.icons,color: Colors.white));
  }
}
