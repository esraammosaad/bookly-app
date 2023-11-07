import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key, required this.item}) : super(key: key);
  final BookModel item;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: BookDetailsViewBody(item: item),
    );
  }
}
