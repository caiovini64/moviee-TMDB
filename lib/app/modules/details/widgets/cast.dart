import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/details/controllers/cast_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class Cast extends GetView<CastController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CAST'.tr,
                    style: AppTheme.to.theme.textTheme.headline1,
                  ),
                  TextButton(onPressed: () {}, child: Text('Show all'.tr)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: Get.height * 0.09,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state!.length >= 7 ? 7 : state.length,
                  itemBuilder: (context, index) {
                    final cast = state[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Container(
                            width: Get.width * 0.17,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  controller.urlPath + cast.profilePath,
                                ),
                              ),
                            ),
                          )),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
