import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/popular_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/values/constants.dart';

class PopularCarousel extends GetView<PopularController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MOST POPULAR'.tr,
                  style: AppTheme.to.theme.textTheme.headline1,
                ),
                TextButton(
                  child: Text('Show all'.tr),
                  onPressed: () => controller.goToMovies('Most Popular'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: Get.height * 0.26,
              child: ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: controller.movieListPopular.length >= 7
                    ? 7
                    : controller.movieListPopular.length,
                itemBuilder: (context, index) {
                  final movie = controller.movieListPopular[index];
                  return GestureDetector(
                    onTap: () => controller.goToDetails(movie),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage(
                              controller.urlPath + movie.posterPath),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      onLoading: Shimmer.fromColors(
        baseColor: AppTheme.to.theme.accentColor,
        highlightColor: reflexLightColor,
        child: Padding(
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
      ),
    );
  }
}
