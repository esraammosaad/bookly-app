import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
class CustomPriceRow extends StatelessWidget {
  const CustomPriceRow({
    super.key, required this.price,
  });
  final String price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.baseline,

        children: [

          Expanded(
            child: Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              'Free',
              style:
              Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          // Text(' €', style: Styles.textStyle15),



        ],
      ),
    );
  }
}