import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/search/controller.dart';

class SearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
