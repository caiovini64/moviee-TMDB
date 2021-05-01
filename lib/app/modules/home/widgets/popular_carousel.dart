import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/controller.dart';
import 'package:tmdb_api/app/modules/home/widgets/custom_carousel.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class PopularCarousel extends StatelessWidget {
  final HomeController controller = Get.find();
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
                'Popular',
                style: AppTheme.to.theme.textTheme.headline1,
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: AppTheme.to.theme.buttonColor,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.26,
          child: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              final movieList = controller.movieListPopular[index];
              return Padding(
                padding: const EdgeInsets.only(left: 18),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image:
                        NetworkImage(controller.urlPath + movieList.posterPath),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
