



import 'package:write_again_cat_api/data/network_service.dart';
import 'package:write_again_cat_api/domain/repositories/image_repository.dart';

late final ImageRepository repository;

void serviceLocator() {
  repository = const ImageRepositoryImplementation(
    network: HttpNetwork(),
  );
}