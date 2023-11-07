import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets_data.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.09, right: MediaQuery.of(context).size.width * 0.09, top: 16, bottom: 47),      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ImagesData.logo,
            height: 16,
            width: 75,
          ),
          GestureDetector(
            onTap: (){
              context.push(AppRoutes.searchView);
            },
              child: const Icon(Icons.search)),
        ],
      ),
    );
  }
}
