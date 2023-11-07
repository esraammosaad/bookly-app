import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'list_view_book_item.dart';
class CustomBookDetailsListViewItem extends StatelessWidget {
  const CustomBookDetailsListViewItem({
    super.key, required this.item,
  });
  final BookModel item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.22,
      child:  Padding(
        padding: const EdgeInsets.only(right: 6.0),
        child: GestureDetector(
          onTap: (){ context.push(AppRoutes.bookDetailsView,extra: item);},
            child: BookItem(image: item.volumeInfo.imageLinks?.thumbnail??'')),
      ),
    );
  }
}
