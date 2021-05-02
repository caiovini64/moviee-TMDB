import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/widgets/custom_carousel.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class SeriesCarousel extends StatelessWidget {
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
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CustomCarousel(
            childCount: 5,
            childHeight: 0.2,
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Container(
                width: Get.width * 0.3,
                decoration: BoxDecoration(
                  color: AppTheme.to.theme.accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
