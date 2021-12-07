import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_2021/router/router.gr.dart';
import 'package:devfest_2021/ui/components/app_text.dart';
import 'package:devfest_2021/ui/components/loading/container_with_loading.dart';
import 'package:devfest_2021/ui/components/loading/loading.dart';
import 'package:devfest_2021/ui/home/photos_view_model.dart';
import 'package:devfest_2021/ui/hook/use_router.dart';
import 'package:devfest_2021/ultilize/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:devfest_2021/foundation/extension/async_snapshot.dart';
import 'package:auto_route/auto_route.dart';
import '../loading_state_view_model.dart';

class QueriedPhotosPage extends HookWidget {
  const QueriedPhotosPage({Key? key, @QueryParam('query') this.query})
      : super(key: key);

  final String? query;

  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.read(photosViewModelProvider);
    final router = useRouter();
    final photos = useProvider(
        photosViewModelProvider.select((value) => value.queriedPhotos));

    final snapshot = useFuture(
      useMemoized(() {
        return context.read(loadingStateProvider).whileLoading(
            () => homeViewModel.fetchPhotosByQuery(query: query!));
      }, [photos?.toString()]),
    );
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          width: ScreenSize.width,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: AppText(
                    "$query",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContainerWithLoading(
                      child: snapshot.isWaiting || photos == null
                          ? const SizedBox()
                          : photos.when(success: (data) {
                              // Success, Failure
                              // Result<News> Success extend Result
                              if (data.photos!.isEmpty) {
                                return const Center(child: Text("No Result"));
                              }
                              return RefreshIndicator(
                                onRefresh: () async =>
                                    homeViewModel.fetchPhotos,
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  height: designHeight(1500),
                                  child: StaggeredGridView.countBuilder(
                                    crossAxisCount: 4,
                                    itemCount: data.photos!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      final photo = data.photos![index];
                                      return GestureDetector(
                                        onTap: () {
                                          router.navigate(
                                              ImageDetailRoute(photo: photo));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: CachedNetworkImage(
                                            imageUrl: photo.src!.original!,
                                            memCacheHeight:
                                                (300 * devicePixelRatio)
                                                    .round(),
                                            memCacheWidth:
                                                (300 * devicePixelRatio)
                                                    .round(),
                                            maxWidthDiskCache:
                                                (300 * devicePixelRatio)
                                                    .round(),
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            placeholder: (context, url) =>
                                                const Loading(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                          ),
                                        ),
                                      );
                                    },
                                    staggeredTileBuilder: (int index) =>
                                        StaggeredTile.count(
                                            2, index.isEven ? 2 : 1),
                                    mainAxisSpacing: 4.0,
                                    crossAxisSpacing: 4.0,
                                  ),
                                ),
                              );
                            }, failure: (e) {
                              return Center(child: AppText("ERROR: $e"));
                            }),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
