import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Huel",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            // color: kGreyColor5,
          ),
        ),
        Text(
          "®",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            // color: kGreyColor5,
          ),
        ),
      ],
    );
  }
}
