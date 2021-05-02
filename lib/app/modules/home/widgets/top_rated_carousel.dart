import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tmdb_api/app/modules/home/controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/values/constants.dart';

class TopRatedCarousel extends StatelessWidget {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    //TODO: Tratar erro
    return controller.obx(
      (state) => SizedBox(
        height: Get.height * 0.24,
        child: ListView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: controller.movieListTopRated.length >= 7
                ? 7
                : controller.movieListTopRated.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final movie = controller.movieListTopRated[index];
              return Padding(
                padding: const EdgeInsets.only(left: 18.0, bottom: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image:
                        NetworkImage(controller.urlPath + movie.backdropPath),
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
