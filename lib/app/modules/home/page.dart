import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/controller.dart';
import 'package:tmdb_api/app/modules/home/pages/initial/page.dart';
import 'package:tmdb_api/app/modules/home/pages/search/page.dart';
import 'package:tmdb_api/app/modules/home/widgets/custom_bottom_navbar.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class HomePage extends GetView<HomeController> {
  static const route = '/initial';
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppTheme.to.theme.backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Moviee'),
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
              child: SearchPage(),
            ),
            Visibility(
              visible: controller.currentIndex == 2,
              child: Center(child: Text('3')),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
