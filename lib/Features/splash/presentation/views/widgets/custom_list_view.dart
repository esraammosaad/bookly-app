import 'package:flutter/material.dart';

import 'list_view_book_item.dart';
class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 45),

      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: ListView.builder(
          padding: EdgeInsets.zero,

          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) =>  Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,


                child: const ListViewBookItem()),
          ),
        ),
      ),
    );
  }
}