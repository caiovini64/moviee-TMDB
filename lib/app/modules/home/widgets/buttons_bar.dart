import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class ButtonsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 30),
      child: Container(
        height: Get.height * 0.07,
        child: Row(
          children: [
            Container(
              height: Get.height * 0.07,
              width: Get.width * 0.3,
              decoration: BoxDecoration(
                color: AppTheme.to.darkTheme.accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'Movies',
                  style: AppTheme.to.darkTheme.textTheme.bodyText1,
                ),
              ),
            ),
            VerticalDivider(width: 1),
            Container(
              height: Get.height * 0.07,
              width: Get.width * 0.3,
              decoration: BoxDecoration(
                color: AppTheme.to.darkTheme.accentColor,
              ),
              child: Center(
                child: Text(
                  'TV Shows',
                  style: AppTheme.to.darkTheme.textTheme.bodyText1,
                ),
              ),
            ),
            VerticalDivider(width: 1),
            Container(
              width: Get.width * 0.3,
              height: Get.height * 0.07,
              decoration: BoxDecoration(
                color: AppTheme.to.darkTheme.accentColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'People',
                  style: AppTheme.to.darkTheme.textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
