import 'package:get/get.dart';
import 'package:tmdb_api/app/data/repositories/cast_repository.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/data/services/cast_services.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';
import 'package:tmdb_api/app/modules/details/controllers/cast_controller.dart';
import 'package:tmdb_api/app/modules/details/controllers/details_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/network/connection_client.dart';
import 'controllers/recommendations_controller.dart';
import 'package:http/http.dart' as http;

class DetailsBinding implements Bindings {
  final ConnectionClient httpClient = ConnectionClient(http.Client);
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() {
      return DetailsController(
        MovieRepository(
          MovieService(client: httpClient),
        ),
      );
    });
    Get.lazyPut<CastController>(() {
      return CastController(
        CastRepository(
          CastService(client: httpClient),
        ),
      );
    });
    Get.lazyPut<RecommendationsController>(() {
      return RecommendationsController(
        MovieRepository(
          MovieService(client: httpClient),
        ),
      );
    });
    Get.put(AppTheme());
  }
}
