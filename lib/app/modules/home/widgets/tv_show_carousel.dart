import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tmdb_api/app/modules/home/controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/values/constants.dart';

class TvShowCarousel extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 18, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TV SERIES',
                style: AppTheme.to.theme.textTheme.headline1,
              ),
              TextButton(
                child: Text('Show all'),
                onPressed: () {},
              ),
            ],
          ),
        ),
        controller.obx(
          (state) => Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: Get.height * 0.16,
              child: ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: controller.tvShowListPopular.length >= 7
                    ? 7
                    : controller.tvShowListPopular.length,
                itemBuilder: (context, index) {
                  final tvShowList = controller.tvShowListPopular[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: NetworkImage(
                            controller.urlPath + tvShowList.posterPath),
                      ),
                    ),
                  );
                },
              ),
            ),
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
                    height: Get.height * 0.16,
                    width: Get.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.to.theme.accentColor,
                    ),
                  ),
                  Container(
                    height: Get.height * 0.16,
                    width: Get.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.to.theme.accentColor,
                    ),
                  ),
                  Container(
                    height: Get.height * 0.16,
                    width: Get.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.to.theme.accentColor,
                    ),
                  ),
                  Container(
                    height: Get.height * 0.16,
                    width: Get.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.to.theme.accentColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}