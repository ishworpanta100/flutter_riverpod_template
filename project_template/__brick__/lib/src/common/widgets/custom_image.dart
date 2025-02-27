import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Custom image widget that loads an image as a static asset.
class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.imageUrl, this.height = 200, this.width});
  final String imageUrl;
  final double height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => const Center(child: Icon(Icons.error, color: Colors.red)),
    );
  }
}
