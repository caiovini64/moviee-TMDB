import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tmdb_api/app/modules/home/pages/initial/controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/values/constants.dart';

class UpcomingCarousel extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    //TODO: Tratar erro
    return controller.obx(
      (state) => SizedBox(
        height: Get.height * 0.24,
        child: ListView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: controller.movieListUpcoming.length >= 7
                ? 7
                : controller.movieListUpcoming.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final movie = controller.movieListUpcoming[index];
              return GestureDetector(
                onTap: () => controller.goToDetails(movie),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, bottom: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image:
                          NetworkImage(controller.urlPath + movie.backdropPath),
                    ),
                  ),
                ),
              );
            }),
      ),
      onLoading: Shimmer.fromColors(
        baseColor: AppTheme.to.theme.accentColor,
        highlightColor: reflexLightColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 18, bottom: 30, right: 18),
          child: Container(
            height: Get.height * 0.22,
            decoration: BoxDecoration(
              color: AppTheme.to.theme.accentColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
