import 'package:get/get.dart';

class Localization {
  static String locale() {
    final locale = Get.locale.toString();
    if (locale == 'pt_BR') return 'pt-BR';
    return 'en-US';
  }
}
