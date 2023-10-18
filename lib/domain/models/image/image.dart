import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:write_again_cat_api/domain/models/breed/breed.dart';

part 'image.freezed.dart';

part 'image.g.dart';

@freezed
class CatImage with _$CatImage {
  const factory CatImage({
    @Default([]) List<Breed> breeds,
    required String id,
    required String url,
    required int width,
    required int height,
  }) = _CatImage;

  factory CatImage.fromJson(Map<String, Object?> json) => _$CatImageFromJson(json);
}
