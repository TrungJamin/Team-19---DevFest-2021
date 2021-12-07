import 'package:devfest_2021/data/models/photo_list/photo_list.dart';
import 'package:dio/dio.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../app_dio.dart';

part 'photos_data_source.g.dart';

final photosDataSourceProvider = Provider((ref) => PhotosDataSource(ref.read));

@RestApi()
abstract class PhotosDataSource {
  factory PhotosDataSource(Reader reader) =>
      _PhotosDataSource(reader(dioProvider));

  @GET("/v1/search")
  Future<PhotoList> getPhotos({
    @Header("accept") String? accept = "*/*",
    @Header("Authorization") required String accessToken,
    @Query("query") String? query = "popular",
    @Query("per_page") String? perpage = "50",
    @Query("page") String? page = "1",
  });

  @GET("/v1/search")
  Future<PhotoList> getPhotosByQuery({
    @Header("accept") String? accept = "*/*",
    @Header("Authorization") required String accessToken,
    @Query("query") required String query,
    @Query("per_page") String? perpage = "8",
    @Query("page") String? page = "1",
  });
}
