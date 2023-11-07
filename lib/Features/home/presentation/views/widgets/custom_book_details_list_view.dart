import 'package:bookly_app/Features/home/presentation/view_models/related_books_cubit/related_books_cubit.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_book_details_list_view_item.dart';
class CustomBookDetailsListView extends StatelessWidget {
  const CustomBookDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelatedBooksCubit, RelatedBooksState>(
  builder: (context, state) {
     if(state is RelatedBooksSuccess){
       return SizedBox(
         height:MediaQuery.of(context).size.width * 0.3 ,
         child: ListView.builder(
             itemCount: 10,
             scrollDirection: Axis.horizontal,
             itemBuilder: (context,index){
               return  CustomBookDetailsListViewItem(item: state.booksList[index],);
             }),
       );


    }else if (state is RelatedBooksFailure){
       return CustomErrorMessage(errMessage: state.errMessage);
     }else
     {

       return const CustomLoadingIndicator();
     }
  },
);
  }
}