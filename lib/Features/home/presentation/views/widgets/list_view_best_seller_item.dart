import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_raiting_row.dart';
import '../../../../../core/utilis/styles.dart';
import 'custom_price_row.dart';
import 'list_view_book_item.dart';

class ListViewBestSellerItem extends StatelessWidget {
  const ListViewBestSellerItem({Key? key}) : super(key: key);

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
              child: const BookItem(),
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
                        'Harry Potter and the Goblet of Fire',
                        style: GoogleFonts.spectral(
                          textStyle: Styles.textStyle20,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  Opacity(
                      opacity: 0.7,
                      child: Text(
                        'J.K. Rowling',
                        style: Styles.textStyle14,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomPriceRow(),
                      CustomRatingRow(),
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
