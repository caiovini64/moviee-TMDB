import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/controllers/home_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class ButtonsBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 20),
      child: Container(
        height: Get.height * 0.05,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                controller.goToMovies('Now Playing');
              },
              child: Container(
                height: Get.height * 0.07,
                width: Get.width * 0.3,
                decoration: BoxDecoration(
                  color: AppTheme.to.theme.accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Now Playing'.tr,
                    style: AppTheme.to.theme.textTheme.bodyText1,
                  ),
                ),
              ),
            ),
            VerticalDivider(width: 1),
            GestureDetector(
              onTap: () {
                controller.goToMovies('Upcoming');
              },
              child: Container(
                height: Get.height * 0.07,
                width: Get.width * 0.3,
                decoration: BoxDecoration(
                  color: AppTheme.to.theme.accentColor,
                ),
                child: Center(
                  child: Text(
                    'Upcoming'.tr,
                    style: AppTheme.to.theme.textTheme.bodyText1,
                  ),
                ),
              ),
            ),
            VerticalDivider(width: 1),
            GestureDetector(
              onTap: () {
                controller.goToMovies('Top Rated');
              },
              child: Container(
                width: Get.width * 0.3,
                height: Get.height * 0.07,
                decoration: BoxDecoration(
                  color: AppTheme.to.theme.accentColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Top Rated'.tr,
                    style: AppTheme.to.theme.textTheme.bodyText1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
