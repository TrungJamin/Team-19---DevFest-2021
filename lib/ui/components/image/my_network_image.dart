import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_2021/ui/components/loading/loading.dart';
import 'package:flutter/material.dart';

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage(
      {Key? key,
      required this.url,
      this.width,
      this.height,
      this.fit,
      this.shape})
      : super(key: key);

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BoxShape? shape;
  @override
  Widget build(BuildContext context) {
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Image.network(
      url,
      fit: fit ?? BoxFit.fill,
      width: width,
      height: height,
      cacheHeight: (300 * devicePixelRatio).round(),
      cacheWidth: (300 * devicePixelRatio).round(),
    );
  }
}
// CachedNetworkImage(
// imageUrl: url,
// imageBuilder: (context, imageProvider) => Container(
// width: width,
// height: height,
// decoration: BoxDecoration(
// shape: shape ?? BoxShape.rectangle,
// image: DecorationImage(
// image: imageProvider,
// fit: fit ?? BoxFit.fill,
// ),
// ),
// ),
// placeholder: (context, url) => const Loading(),
// errorWidget: (context, url, error) => const Icon(Icons.error),
// );
