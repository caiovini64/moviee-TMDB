import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tmdb_api/app/modules/home/controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/values/constants.dart';

class PopularCarousel extends GetView<HomeController> {
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
                  'MOST POPULAR',
                  style: AppTheme.to.theme.textTheme.headline1,
                ),
                TextButton(
                  child: Text('Show all'),
                  onPressed: () {},
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
                  final movieList = controller.movieListPopular[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: NetworkImage(
                            controller.urlPath + movieList.posterPath),
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
