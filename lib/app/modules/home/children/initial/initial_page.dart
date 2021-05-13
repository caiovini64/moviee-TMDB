import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/top_rated_controller.dart';
import 'package:tmdb_api/app/modules/home/widgets/buttons_bar.dart';
import 'package:tmdb_api/app/modules/home/widgets/popular_carousel.dart';
import 'package:tmdb_api/app/modules/home/widgets/upcoming_carousel.dart';
import 'package:tmdb_api/app/modules/home/widgets/top_rated_carousel.dart';

class InitialPage extends GetView<TopRatedController> {
  static const route = '/home';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UpcomingCarousel(),
            ButtonsBar(),
            PopularCarousel(),
            TopRatedCarousel(),
          ],
        ),
      ),
    );
  }
}
