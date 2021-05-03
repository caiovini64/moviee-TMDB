import 'package:get/get.dart';
import 'package:tmdb_api/app/global/widgets/bottom_nav/bottom_nav_controller.dart';
import 'package:tmdb_api/app/modules/home/controller.dart';
import 'package:tmdb_api/app/modules/initial/controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitialController>(() => InitialController());
    Get.lazyPut<AppTheme>(() => AppTheme());
    Get.put(BottomNavController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
