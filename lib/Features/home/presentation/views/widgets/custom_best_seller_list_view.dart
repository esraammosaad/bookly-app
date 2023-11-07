import 'package:bookly_app/Features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
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
      sliver: SliverFillRemaining(
        child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
          builder: (context, state) {
            if (state is NewestBooksSuccess) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    GestureDetector(
                      onTap: (){
                        context.push(AppRoutes.bookDetailsView,extra: state.booksList[index]);
                      },
                        child: ListViewBestSellerItem(item: state.booksList[index])),
                itemCount: state.booksList.length,
              );
            } else if (state is NewestBooksFailure) {
              return CustomErrorMessage(errMessage: state.errMessage);
            } else {
              return const CustomLoadingIndicator();
            }
          },
        ),
      ),
    );
  }
}
