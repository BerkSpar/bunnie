import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String firstText;
  final String secondText;

  const InfoText({Key key, this.firstText, this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: firstText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        children: [
          TextSpan(
            text: secondText,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
