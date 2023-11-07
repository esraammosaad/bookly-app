import 'package:bookly_app/Features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_detailes_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/widgets/custom_error_message.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'list_view_book_item.dart';

class CustomFeaturedBooksListView extends StatelessWidget {
  const CustomFeaturedBooksListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 45),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
          builder: (context, state) {
            if (state is FeaturedBooksFailure) {
              return CustomErrorMessage(
                errMessage: state.errMessage,
              );
            } else if (state is FeaturedBooksSuccess) {
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: state.booksList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: GestureDetector(
                          onTap: () {
                            context.push(AppRoutes.bookDetailsView,
                                extra: state.booksList[index]);
                          },
                          child: BookItem(
                            image: state.booksList[index].volumeInfo?.imageLinks
                                    ?.thumbnail ??
                                '',
                          ))),
                ),
              );
            } else {
              return const CustomLoadingIndicator();
            }
          },
        ),
      ),
    );
  }
}
