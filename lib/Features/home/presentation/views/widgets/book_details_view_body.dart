import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/presentation/view_models/related_books_cubit/related_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_raiting_row.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/list_view_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_details_list_view.dart';
import 'custom_button_row.dart';

class BookDetailsViewBody extends StatefulWidget {
  const BookDetailsViewBody({Key? key, required this.item}) : super(key: key);
  final BookModel item;

  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {
  @override
  void initState() {
    BlocProvider.of<RelatedBooksCubit>(context)
        .getRelatedBooks(bookTitle: widget.item.volumeInfo?.title!??'');
    super.initState();
  }

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
                      child: BookItem(
                          image: widget.item.volumeInfo?.imageLinks?.thumbnail ??
                              ''),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Text(
                      widget.item.volumeInfo.title ?? '',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spectral(
                        textStyle: Styles.textStyle30,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(widget.item.volumeInfo.publisher ?? '',
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
                     CustomButtonRow(bookUrl: widget.item.accessInfo.webReaderLink??''),
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
