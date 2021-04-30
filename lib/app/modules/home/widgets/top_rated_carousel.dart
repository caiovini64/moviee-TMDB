import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/controller.dart';

class TopRatedCarousel extends StatelessWidget {
  const TopRatedCarousel({
    @required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    //TODO: Terminar esse widget
    return controller.obx(
      (state) => SizedBox(
        height: Get.height * 0.24,
        child: ListView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: 5,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final movie = controller.movieList[index];
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
      onLoading: Center(child: CircularProgressIndicator()),
      onError: (error) => Center(
        child: Text('error'),
      ),
    );
  }
}
