import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/details/controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() => DetailsController());
    Get.put(AppTheme());
  }
}
