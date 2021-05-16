import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/details/controllers/cast_controller.dart';
import 'package:tmdb_api/app/modules/details/controllers/current_movie_controller.dart';
import 'package:tmdb_api/app/modules/details/controllers/details_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

import 'controllers/recommendations_controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() => DetailsController());
    Get.lazyPut<CurrentMovieController>(() => CurrentMovieController());
    Get.lazyPut<CastController>(() => CastController());
    Get.lazyPut<RecommendationsController>(() => RecommendationsController());

    Get.put(AppTheme());
  }
}
