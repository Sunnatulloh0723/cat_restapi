import 'dart:convert';

import 'package:write_again_cat_api/core/apis.dart';
import 'package:write_again_cat_api/core/param/image_param.dart';
import 'package:write_again_cat_api/data/network_service.dart';
import 'package:write_again_cat_api/domain/models/image/image.dart';

abstract class ImageRepository {
  Future<List<CatImage>> fetchAllCatImage(ImageParam param);
  Future<String?> uploadImage(String path, String description);
}

class ImageRepositoryImplementation implements ImageRepository {
  final Network network;

  const ImageRepositoryImplementation({required this.network});

  @override
  Future<List<CatImage>> fetchAllCatImage(ImageParam param) async {
    String response = await network.methodGet(api: Api.apiImages, query: param.toQueryParameters) ?? "[]";
    List data = jsonDecode(response);
    List<CatImage> images = data.map((item) => CatImage.fromJson(item)).toList();
    return images;
  }

  @override
  Future<String?> uploadImage(String path, String description) async {
    final response = await network.multipart(api: Api.apiUploadImage, filePath: path, body: {"sub_id": description});
    if(response != null) {
      return "Successfully uploaded!";
    }
    return null;
  }
}