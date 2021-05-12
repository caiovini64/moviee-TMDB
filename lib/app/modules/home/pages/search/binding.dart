import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/pages/search/controller.dart';

class SearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
