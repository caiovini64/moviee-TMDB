import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tmdb_api/app/modules/details/controllers/details_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/values/constants.dart';

class InfoDetails extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: NetworkImage(
                    controller.urlPath + controller.movie.backdropPath),
              ),
            ),
            SizedBox(height: 18),
            Text(
              state!.title,
              style: AppTheme.to.theme.textTheme.headline2,
            ),
            SizedBox(height: 9),
            Text(
              state.overview,
              style: AppTheme.to.theme.textTheme.bodyText1,
            ),
          ],
        ),
      ),
      onLoading: Shimmer.fromColors(
        baseColor: AppTheme.to.theme.accentColor,
        highlightColor: reflexLightColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 18, bottom: 30, right: 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Get.height * 0.22,
                decoration: BoxDecoration(
                  color: AppTheme.to.theme.accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 18),
              Container(
                width: Get.width * 0.25,
                height: Get.height * 0.03,
                decoration: BoxDecoration(
                  color: AppTheme.to.theme.accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 9),
              Container(
                height: Get.height * 0.17,
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
