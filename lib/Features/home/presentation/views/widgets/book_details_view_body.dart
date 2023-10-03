import 'package:bookly_app/Features/home/presentation/views/widgets/custom_raiting_row.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/list_view_book_item.dart';
import 'package:bookly_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_details_list_view.dart';
import 'custom_button_row.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.07,
                  right: MediaQuery.of(context).size.width * 0.07,
                  top: 8,
                ),
                child: Column(
                  children: [
                    const CustomBookDetailsAppBar(),
                    const SizedBox(
                      height: 33,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: const BookItem(),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Text(
                      'The Jungle Book',
                      style: GoogleFonts.spectral(
                        textStyle: Styles.textStyle30,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text('Rudyard Kipling',
                        style: Styles.textStyle18.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Colors.white.withOpacity(0.7))),
                    const SizedBox(
                      height: 17,
                    ),
                    const CustomRatingRow(),
                    const SizedBox(
                      height: 37,
                    ),
                    const CustomButtonRow(),
                    const SizedBox(
                      height: 51,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'You can also like',
                          style: Styles.textStyle14,
                          textAlign: TextAlign.left,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          fillOverscroll: false,
          child: CustomBookDetailsListView(),
        ),
      ],
    );
  }
}
