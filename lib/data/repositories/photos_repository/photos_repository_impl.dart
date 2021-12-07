import 'package:devfest_2021/data/models/photo_list/photo_list.dart';
import 'package:devfest_2021/data/models/result/result.dart';
import 'package:devfest_2021/data/remote/photos_data_source/photos_data_source.dart';
import 'package:devfest_2021/data/repositories/photos_repository/photos_repository.dart';
import 'package:devfest_2021/foundation/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final photosRepositoryProvider =
    Provider((ref) => PhotosRepositoryImpl(ref.read));

class PhotosRepositoryImpl implements PhotosRepository {
  PhotosRepositoryImpl(this._reader);

  final Reader _reader;

  late final PhotosDataSource _dataSource = _reader(photosDataSourceProvider);

  @override
  Future<Result<PhotoList>> getPhotos({required String pageKey}) {
    return Result.guardFuture<PhotoList>(
      () async => await _dataSource.getPhotos(
          accessToken: Constants.instance.apiKey, page: pageKey),
    );
  }

  @override
  Future<Result<PhotoList>> getPhotosByQuery({required String query}) {
    return Result.guardFuture<PhotoList>(
      () async => await _dataSource.getPhotosByQuery(
          accessToken: Constants.instance.apiKey, query: query),
    );
  }
}
