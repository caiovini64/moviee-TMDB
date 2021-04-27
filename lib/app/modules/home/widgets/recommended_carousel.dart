import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class RecommendedCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Trending',
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
        SizedBox(height: 30),

        //TODO: Transformar em lista carrossel
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              width: Get.width * 0.44,
              height: Get.height * 0.3,
              decoration: BoxDecoration(
                color: AppTheme.to.darkTheme.accentColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              width: Get.width * 0.44,
              height: Get.height * 0.3,
              decoration: BoxDecoration(
                color: AppTheme.to.darkTheme.accentColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
        // SizedBox(
        //   height: Get.height * 0.3,
        //   child: ListView.builder(
        //       physics: ClampingScrollPhysics(),
        //       itemCount: 3,
        //       shrinkWrap: true,
        //       scrollDirection: Axis.horizontal,
        //       itemBuilder: (context, index) {
        //         return Container(
        //           padding: EdgeInsets.only(left: 20),
        //           width: Get.width * 0.5,
        //           height: Get.height * 0.3,
        //           decoration: BoxDecoration(
        //             color: AppTheme.to.darkTheme.accentColor,
        //             borderRadius: BorderRadius.circular(10),
        //           ),
        //         );
        //       }),
        // ),
      ],
    );
  }
}
