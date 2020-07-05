import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class GenderButton extends StatelessWidget {
  GenderButton({@required this.icon, @required this.text});
  final FaIcon icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: icon,
            iconSize: 80,
          ),
          Text(text, style: kLabelTextStyle),
        ],
      ),
    );
  }
}
