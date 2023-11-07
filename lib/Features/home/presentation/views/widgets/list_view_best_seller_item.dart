import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_raiting_row.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_price_row.dart';
import 'list_view_book_item.dart';

class ListViewBestSellerItem extends StatelessWidget {
  const ListViewBestSellerItem({Key? key, required this.item}) : super(key: key);
  final BookModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 13,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.22,
              child:  BookItem(image: item.volumeInfo.imageLinks?.thumbnail??''),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.09,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        item.volumeInfo.title??'',
                        style: GoogleFonts.spectral(
                          textStyle: Styles.textStyle20,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  Opacity(
                      opacity: 0.7,
                      child: Text(
                        item.volumeInfo.publisher??'',
                        style: Styles.textStyle14,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomPriceRow(price: item.saleInfo.saleability!),
                      const CustomRatingRow(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
