import 'package:flutter/material.dart';
import 'custom_book_details_list_view_item.dart';
class CustomBookDetailsListView extends StatelessWidget {
  const CustomBookDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.width * 0.3 ,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return const CustomBookDetailsListViewItem();
          }),
    );
  }
}