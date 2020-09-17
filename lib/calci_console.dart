import 'package:flutter/material.dart';

class CalciConsole extends StatelessWidget {
  final String text;
  CalciConsole({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 36),
          alignment : Alignment.bottomRight,
          child: Text(
            text,
            style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.w600
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
