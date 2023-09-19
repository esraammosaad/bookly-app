import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utilis/styles.dart';
class CustomRatingRow extends StatelessWidget {
  const CustomRatingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 13,
        ),


        const SizedBox(width: 5,),
        Text('4.8', style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(width: 6,),

        Opacity(
            opacity: 0.5,
            child: Text('(2390)', style: Styles.textStyle14)),



      ],
    );
  }
}