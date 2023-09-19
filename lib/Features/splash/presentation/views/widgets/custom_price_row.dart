import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';
class CustomPriceRow extends StatelessWidget {
  const CustomPriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,

      children: [

        Text(
          '19.99',
          style:
          Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(' €', style: Styles.textStyle15),



      ],
    );
  }
}