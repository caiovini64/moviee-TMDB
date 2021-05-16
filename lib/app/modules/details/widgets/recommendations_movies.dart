import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tmdb_api/app/modules/details/controllers/recommendations_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/values/constants.dart';

class RecommendationsMovies extends GetView<RecommendationsController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RECOMMENDATIONS'.tr,
                  style: AppTheme.to.theme.textTheme.headline1,
                ),
                TextButton(onPressed: () {}, child: Text('Show all'.tr)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: Get.height * 0.16,
              child: ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state!.length >= 7 ? 7 : state.length,
                itemBuilder: (context, index) {
                  final movie = state[index];
                  return GestureDetector(
                    onTap: () {
                      controller.updateCurrentMovie(movie);
                      Navigator.pushNamed(context, '/details');
                    },
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
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Get.height * 0.03,
                    width: Get.width * 0.25,
                    decoration: BoxDecoration(
                      color: AppTheme.to.theme.accentColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: Get.height * 0.03,
                    width: Get.width * 0.25,
                    decoration: BoxDecoration(
                      color: AppTheme.to.theme.accentColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18),
              Container(
                height: Get.height * 0.10,
                decoration: BoxDecoration(
                  color: AppTheme.to.theme.accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
