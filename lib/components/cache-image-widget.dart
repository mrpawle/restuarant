import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:restaurants/utilities/constants.dart';
import 'package:shimmer/shimmer.dart';

class CacheImageWidget extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final Alignment alignment;
  final BoxFit? fit;
  CacheImageWidget(this.imageUrl,
      {Key? key,
      this.fit,
      this.height,
      this.alignment = Alignment.center,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: width,
      alignment: alignment,
      height: height,
      progressIndicatorBuilder: (context, url, progress) {
        return Shimmer.fromColors(
          baseColor: Constants.shimmerBaseColor,
          highlightColor: Constants.shimmerHighlightColor,
          child: Container(
            width: width,
            height: height,
            color: Colors.white,
          ),
        );
      },
    );
  }
}
