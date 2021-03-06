import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/details/controllers/details_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class InfoDetails extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
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
              controller.movie.title,
              style: AppTheme.to.theme.textTheme.headline2,
            ),
            SizedBox(height: 9),
            Text(
              controller.movie.overview,
              style: AppTheme.to.theme.textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
