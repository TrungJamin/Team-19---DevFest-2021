import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_2021/consts/my_colors.dart';
import 'package:devfest_2021/router/router.gr.dart';
import 'package:devfest_2021/ui/components/app_text.dart';
import 'package:devfest_2021/ui/components/image/my_network_image.dart';
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

class HomePage extends StatefulHookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _categories = [
    {
      "colors": [
        MyColors.buddhaGold.withOpacity(0.5),
        MyColors.bluePurple.withOpacity(0.5)
      ],
      "title": "Popular",
      "img": "assets/images/popular.jpg",
    },
    {
      "colors": [
        MyColors.cobalt.withOpacity(0.5),
        MyColors.red.withOpacity(0.5)
      ],
      "title": "Nature",
      "img": "assets/images/natural.jpg",
    },
    {
      "colors": [
        MyColors.hollywoodCerise.withOpacity(0.5),
        MyColors.cobalt.withOpacity(0.5)
      ],
      "title": "Fashion",
      "img": "assets/images/fashion.jpg",
    },
    {
      "colors": [
        MyColors.buddhaGold.withOpacity(0.5),
        MyColors.bluePurple.withOpacity(0.5)
      ],
      "title": "Animal",
      "img": "assets/images/animal.jpg",
    },
    {
      "colors": [
        MyColors.buddhaGold.withOpacity(0.5),
        MyColors.bluePurple.withOpacity(0.5)
      ],
      "title": "Beauty",
      "img": "assets/images/beauty.jpg",
    },
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.read(photosViewModelProvider);
    final router = useRouter();
    final photos =
        useProvider(photosViewModelProvider.select((value) => value.photos));

    final snapshot = useFuture(
      useMemoized(() {
        return context
            .read(loadingStateProvider)
            .whileLoading(() => homeViewModel.fetchPhotos(pageKey: "1"));
      }, [photos?.toString()]),
    );
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const AppText(
            "DevFest 2021",
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ],
        ),
        body: SizedBox(
          width: ScreenSize.width,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: designHeight(60),
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final element = _categories[index];
                      return _buildCategory(
                        colors: element["colors"],
                        title: element["title"],
                        image: element["img"],
                        onTap: () {
                          router.push(
                              QueriedPhotosRoute(query: element["title"]));
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: designWidth(5));
                    },
                    itemCount: _categories.length,
                  ),
                ),
                SizedBox(
                  height: designHeight(15),
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
                                  height: designHeight(800),
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

  Widget _buildCategory(
      {required List<Color> colors,
      String? title,
      String? image,
      VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: designWidth(136),
              height: designHeight(60),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    '$image',
                  ),
                ),
              ),
            ),
            Container(
              width: designWidth(136),
              height: designHeight(60),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: colors,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: const [0.0, 1.0],
                ),
              ),
            ),
            AppText(
              "$title",
              fontSize: 15,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
