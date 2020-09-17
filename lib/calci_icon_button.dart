import 'package:flutter/material.dart';

class CalciIconButton extends StatelessWidget {

  final Function onTapped;
  final IconData iconData;
  final Color color;

  CalciIconButton({@required this.onTapped,@required this.iconData,this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTapped,
        child: Container(
          alignment: Alignment.center,
          child: Icon(
            iconData,
            color: color == null ? Colors.black : color
          ),
        ),
      ),
    );
  }
}
