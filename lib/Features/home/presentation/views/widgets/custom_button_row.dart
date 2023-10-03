import 'package:flutter/material.dart';
import '../../../../../core/utilis/styles.dart';
import 'custom_button.dart';
class CustomButtonRow extends StatelessWidget {
  const CustomButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text: '19.99€',
          right: 0,
          left: 16,
          backGroundColor: Colors.white,
          textStyle: Styles.textStyle15
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        CustomButton(
          text: 'Free preview',
          right: 16,
          left: 0,
          backGroundColor: const Color(0xffEF8262),
          textStyle: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }
}
