import 'package:get/get.dart';
import 'package:tmdb_api/app/data/providers/movie_provider.dart';
import 'package:tmdb_api/app/data/providers/tv_show_provider.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/data/repositories/tv_show_repository.dart';
import 'package:tmdb_api/app/modules/home/controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<MovieRepository>(() => MovieRepository());
    Get.lazyPut<MovieProvider>(() => MovieProvider());
    Get.lazyPut<TvShowRepository>(() => TvShowRepository());
    Get.lazyPut<TvShowProvider>(() => TvShowProvider());
    Get.put(AppTheme());
  }
}
