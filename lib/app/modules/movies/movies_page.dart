import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

import 'controllers/movies_controller.dart';

class MoviesPage extends GetView<MoviesController> {
  static const route = '/movies';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.to.theme.backgroundColor,
        appBar: AppBar(
          title: Text(controller.movieArgument.tr),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: controller.obx(
          (state) => Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 10),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18,
                childAspectRatio: 11 / 16,
              ),
              itemCount: 12,
              itemBuilder: (context, index) {
                final movie = controller.movieList[index];
                return GestureDetector(
                  onTap: () => controller.goToDetails(movie),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image:
                          NetworkImage(controller.urlPath + movie.posterPath),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
