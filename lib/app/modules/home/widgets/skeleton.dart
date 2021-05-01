import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class Skeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Shimmer.fromColors(
        baseColor: AppTheme.to.theme.accentColor,
        highlightColor: AppTheme.to.theme.backgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //SearchBar
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, bottom: 30),
              child: Container(
                height: Get.height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.to.theme.accentColor,
                ),
              ),
            ),
            //TopRatedCarousel
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 30, right: 18),
              child: Container(
                height: Get.height * 0.22,
                decoration: BoxDecoration(
                  color: AppTheme.to.theme.accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            //ButtonBar
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, bottom: 30),
              child: Container(
                height: Get.height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.to.theme.accentColor,
                ),
              ),
            ),
            //Titles
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Get.height * 0.05,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.to.theme.accentColor,
                    ),
                  ),
                  Container(
                    height: Get.height * 0.05,
                    width: Get.width * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.to.theme.accentColor,
                    ),
                  ),
                ],
              ),
            ),
            //PopularCarousel
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Get.height * 0.3,
                    width: Get.width * 0.43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.to.theme.accentColor,
                    ),
                  ),
                  Container(
                    height: Get.height * 0.3,
                    width: Get.width * 0.43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.to.theme.accentColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
