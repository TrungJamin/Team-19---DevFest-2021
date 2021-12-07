import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_2021/data/models/photo/photo.dart';
import 'package:devfest_2021/ui/components/image/my_network_image.dart';
import 'package:devfest_2021/ui/components/loading/loading.dart';
import 'package:devfest_2021/ui/hook/use_router.dart';
import 'package:devfest_2021/ultilize/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ImageDetailPage extends HookWidget {
  const ImageDetailPage({Key? key, @QueryParam('photo') this.photo})
      : super(key: key);

  final Photo? photo;
  @override
  Widget build(BuildContext context) {
    final router = useRouter();
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CachedNetworkImage(
              filterQuality: FilterQuality.medium,
              memCacheHeight: (300 * devicePixelRatio).round(),
              memCacheWidth: (300 * devicePixelRatio).round(),
              imageUrl: photo!.src!.large2x!,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              placeholder: (context, url) => const Loading(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Container(
              width: ScreenSize.width,
              height: designHeight(60),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.3), Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 0.7],
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      router.pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.file_download,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
