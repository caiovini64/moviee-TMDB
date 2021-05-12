import 'package:get/get.dart';
import 'package:tmdb_api/app/data/providers/movie_provider.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/modules/home/pages/initial/controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitialController>(() => InitialController());
    Get.lazyPut<MovieRepository>(() => MovieRepository());
    Get.lazyPut<MovieProvider>(() => MovieProvider());
    Get.put(AppTheme());
  }
}
