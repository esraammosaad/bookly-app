import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class BookItem extends StatelessWidget {
  const BookItem({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 134/210,
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.error),

        ),
      ),
    );
  }
}