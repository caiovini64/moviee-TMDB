import 'package:get/get.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';

class HomeController extends GetxController {
  final _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  set currentIndex(int index) => _currentIndex.value = index;

  void goToMovies(value) {
    Get.toNamed(Routes.MOVIES, arguments: value);
  }
}
