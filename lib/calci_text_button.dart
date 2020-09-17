import 'package:flutter/material.dart';
import 'constants.dart';

class CalciTextButton extends StatelessWidget {

  final Function onTapped;
  final String buttonText;
  final Color color;

  CalciTextButton({@required this.onTapped,@required this.buttonText,this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTapped,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            buttonText,
            style: calciBlackNumberTextStyle.copyWith(color: color == null ? Colors.black : color),
          ),
        ),
      ),
    );
  }
}