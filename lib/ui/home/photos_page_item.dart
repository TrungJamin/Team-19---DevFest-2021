import 'package:devfest_2021/data/models/photo/photo.dart';
import 'package:devfest_2021/ui/components/image/my_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotosPageItem extends StatelessWidget {
  const PhotosPageItem({Key? key, required this.data}) : super(key: key);

  final List<Photo> data;
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        final photo = data[index];
        return MyNetworkImage(
          url: photo.src!.original!,
        );
      },
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(2, index.isEven ? 2 : 1),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}
