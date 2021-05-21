import 'package:get/get.dart';
import 'package:tmdb_api/app/data/repositories/cast_repository.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/data/services/cast_services.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';
import 'package:tmdb_api/app/modules/details/controllers/cast_controller.dart';
import 'package:tmdb_api/app/modules/details/controllers/details_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

import 'controllers/recommendations_controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(
        () => DetailsController(MovieRepository(MovieService())));
    Get.lazyPut<CastController>(
        () => CastController(CastRepository(CastService())));
    Get.lazyPut<RecommendationsController>(
        () => RecommendationsController(MovieRepository(MovieService())));
    Get.put(AppTheme());
  }
}
