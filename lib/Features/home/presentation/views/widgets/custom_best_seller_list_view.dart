import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'list_view_best_seller_item.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.09,
      ),
      sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
              childCount: 15,
                  (context, index) => const ListViewBestSellerItem())),
    );
  }
}
