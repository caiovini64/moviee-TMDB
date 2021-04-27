import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/widgets/custom_carousel.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class PopularCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 18, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended',
                style: AppTheme.to.darkTheme.textTheme.headline1,
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: AppTheme.to.darkTheme.buttonColor,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: CustomCarousel(
            childCount: 5,
            childHeight: 0.3,
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Container(
                width: Get.width * 0.4,
                decoration: BoxDecoration(
                  color: AppTheme.to.darkTheme.accentColor,
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
