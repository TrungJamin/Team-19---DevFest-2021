import 'package:devfest_2021/data/models/photo_list/photo_list.dart';
import 'package:devfest_2021/data/models/result/result.dart';

abstract class PhotosRepository {
  Future<Result<PhotoList>> getPhotos({required String pageKey});
  Future<Result<PhotoList>> getPhotosByQuery({required String query});
}
