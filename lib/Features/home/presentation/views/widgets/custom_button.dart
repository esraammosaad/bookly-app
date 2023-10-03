import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.right,
    required this.left,
    required this.backGroundColor,
    required this.text,
    required this.textStyle,
  });
  final double right;
  final double left;
  final Color backGroundColor;
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(left),
          topLeft: Radius.circular(left),
          topRight: Radius.circular(right),
          bottomRight: Radius.circular(right),
        ),
        color: backGroundColor,
      ),
      child: Center(
          child: Text(
            text,
            style: textStyle,
          )),
    );
  }
}
