import 'package:get/get.dart';

class MoviesController extends GetxController {
  final repository;
  MoviesController({this.repository});

  final _movieArgument = Get.arguments;

  String get movieArgument => _movieArgument.value;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadData(movieArgument);
  }

  loadData(argument) {
    if (argument == 'Now Playing') {
      print('now');
    } else if (argument == 'Trending') {
      print('trend');
    } else {
      print('discover');
    }
  }
}
