import 'package:flutter/material.dart';

import '../../../../../core/utilis/assets_data.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.09, right: MediaQuery.of(context).size.width * 0.09, top: 16, bottom: 47),      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ImagesData.logo,
            height: 16,
            width: 75,
          ),
          const Icon(Icons.search),
        ],
      ),
    );
  }
}
