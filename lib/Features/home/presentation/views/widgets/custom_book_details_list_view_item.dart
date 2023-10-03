import 'package:flutter/material.dart';
import 'list_view_book_item.dart';
class CustomBookDetailsListViewItem extends StatelessWidget {
  const CustomBookDetailsListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.22,
      child: const Padding(
        padding: EdgeInsets.only(right: 6.0),
        child: BookItem(),
      ),
    );
  }
}
