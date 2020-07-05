import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.child, this.tapped});
  final IconData child;
  final Function tapped;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.tapped == null ? () {} : tapped,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      fillColor: kActiveCardColor,
      shape: CircleBorder(),
      child: Icon(child),
    );
  }
}
