import 'package:devfest_2021/data/models/photo_list/photo_list.dart';
import 'package:devfest_2021/data/models/result/result.dart';
import 'package:devfest_2021/data/repositories/photos_repository/photos_repository.dart';
import 'package:devfest_2021/data/repositories/photos_repository/photos_repository_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final photosViewModelProvider =
    ChangeNotifierProvider((ref) => PhotosViewModel(ref.read));

class PhotosViewModel extends ChangeNotifier {
  PhotosViewModel(this._reader);

  final Reader _reader;

  late final PhotosRepository _repository = _reader(photosRepositoryProvider);

  // Result use case No.1
  Result<PhotoList>? _photos;

  Result<PhotoList>? get photos => _photos;

  // Result use case No.1
  Result<PhotoList>? _queriedPhotos;

  Result<PhotoList>? get queriedPhotos => _queriedPhotos;
  Future<void> fetchPhotos({required String pageKey}) {
    return _repository
        .getPhotos(pageKey: pageKey) // Future<Result<Photos>>
        .then((value) => _photos = value) // Result<Photos>
        .whenComplete(notifyListeners);
  }

  Future<void> fetchPhotosByQuery({required String query}) {
    return _repository
        .getPhotosByQuery(query: query) // Future<Result<Photos>>
        .then((value) => _queriedPhotos = value) // Result<Photos>
        .whenComplete(notifyListeners)
        .catchError((onError) {
      print("ERROR: ${onError.toString()}");
    });
  }
}
