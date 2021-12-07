import 'package:devfest_2021/consts/my_colors.dart';
import 'package:devfest_2021/data/models/photo/photo.dart';
import 'package:devfest_2021/data/models/photo_list/photo_list.dart';
import 'package:devfest_2021/ui/home/photos_page_item.dart';
import 'package:devfest_2021/ui/home/photos_view_model.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:auto_route/auto_route.dart';

class PagedPhotoList extends StatefulWidget {
  const PagedPhotoList({
    Key? key,
    required this.photosViewModel,
  }) : super(key: key);
  final PhotosViewModel photosViewModel;

  @override
  _PagedPhoto createState() => _PagedPhoto();
}

class _PagedPhoto extends State<PagedPhotoList> {
  final _pagingController = PagingController<int, Photo>(
    firstPageKey: 1,
  );

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      await widget.photosViewModel.fetchPhotos(
        pageKey: pageKey.toString(),
      );

      final photos = widget.photosViewModel.photos;

      photos!.ifSuccess((data) {
        final nextPageKey = pageKey + 1;

        _pagingController.appendPage(data.photos!, nextPageKey);
      });
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: () => Future.sync(
          () => _pagingController.refresh(),
        ),
        child: PagedListView.separated(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<List<Photo>>(
            itemBuilder: (context, photos, index) => PhotosPageItem(
              data: photos,
            ),
          ),
          padding: const EdgeInsets.all(4),
          separatorBuilder: (context, index) => const Divider(
            color: MyColors.blueZodiac,
            thickness: 1,
          ),
        ),
      );
}
