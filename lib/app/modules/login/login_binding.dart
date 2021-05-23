import 'package:get/get.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

import 'controllers/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.put(AppTheme());
  }
}
