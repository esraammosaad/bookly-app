import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_button.dart';
class CustomButtonRow extends StatelessWidget {
  const CustomButtonRow({
    super.key, required this.bookUrl,
  });
  final String bookUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text: 'Free',
          right: 0,
          left: 16,
          backGroundColor: Colors.white,
          textStyle: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        GestureDetector(
          onTap: ()async{
            final Uri url = Uri.parse(bookUrl);

              if (await canLaunchUrl(url)) {
                launchUrl(url);
              }


          },
          child: CustomButton(
            text: 'Preview',
            right: 16,
            left: 0,
            backGroundColor: const Color(0xffEF8262),
            textStyle: Styles.textStyle16
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        )
      ],
    );
  }
}
