import 'package:flutter/material.dart';

import '../../../../../core/utilis/assets_data.dart';
class ListViewBookItem extends StatelessWidget {
  const ListViewBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 134/210,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: AssetImage(ImagesData.test),fit: BoxFit.cover)),
      ),
    );
  }
}