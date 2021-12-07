import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_2021/foundation/extension/async_snapshot.dart';
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
import 'package:auto_route/auto_route.dart';
import '../loading_state_view_model.dart';

class SearchPage extends StatefulHookWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Search Bar');
  String? query = "";
  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.read(photosViewModelProvider);
    final router = useRouter();
    final photos = useProvider(
        photosViewModelProvider.select((value) => value.searchPhotos));

    final snapshot = useFuture(
      useMemoized(() {
        return context.read(loadingStateProvider).whileLoading(
            () => homeViewModel.fetchPhotosBySearching(query: query!));
      }, [photos?.toString()]),
    );
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.cancel);
                  customSearchBar = ListTile(
                    leading: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    ),
                    title: TextField(
                      onSubmitted: (value) async {
                        setState(() {
                          query = value;
                          context.read(loadingStateProvider).whileLoading(() =>
                              homeViewModel.fetchPhotosBySearching(
                                  query: value));
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Type here...',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = const Text('Search Bar');
                }
              });
            },
            icon: customIcon,
          )
        ],
        centerTitle: true,
      ),
      body: query!.isEmpty
          ? const Center(
              child: AppText("Search"),
            )
          : SizedBox(
              width: ScreenSize.width,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: designHeight(15),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 15),
                      child: AppText(
                        "$query",
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
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
                                onRefresh: () async => homeViewModel
                                    .fetchPhotosBySearching(query: query!),
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  height: designHeight(800),
                                  child: StaggeredGridView.countBuilder(
                                    crossAxisCount: 4,
                                    itemCount: data.photos!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      final photo = data.photos![index];
                                      return GestureDetector(
                                        onTap: () {
                                          router.push(
                                              ImageDetailRoute(photo: photo));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: CachedNetworkImage(
                                            filterQuality: FilterQuality.medium,
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
                              return Center();
                            }),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
