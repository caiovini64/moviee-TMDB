import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/children/initial/initial_page.dart';
import 'package:tmdb_api/app/modules/home/children/search/search_page.dart';
import 'package:tmdb_api/app/modules/home/controllers/home_controller.dart';
import 'package:tmdb_api/app/modules/home/widgets/custom_bottom_navbar.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/shared/widgets/logo_text_widget.dart';

class HomePage extends GetView<HomeController> {
  static const route = '/initial';
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppTheme.to.theme.backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: LogoText(
            fontSize: 16,
          ),
          // title: Text('Moviee'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: controller.currentIndex == 0,
              child: InitialPage(),
            ),
            Visibility(
              visible: controller.currentIndex == 1,
              child: Center(child: Text('3')),
            ),
            Visibility(
              visible: controller.currentIndex == 2,
              child: SearchPage(),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
