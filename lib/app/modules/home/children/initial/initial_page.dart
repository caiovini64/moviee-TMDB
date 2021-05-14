import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/widgets/buttons_bar.dart';
import 'package:tmdb_api/app/modules/home/widgets/popular_carousel.dart';
import 'package:tmdb_api/app/modules/home/widgets/upcoming_carousel.dart';
import 'package:tmdb_api/app/modules/home/widgets/top_rated_carousel.dart';

class InitialPage extends GetView {
  static const route = '/home';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Semantics(label: 'Upcoming Movies', child: UpcomingCarousel()),
            ButtonsBar(),
            Semantics(label: 'Popular Movies', child: PopularCarousel()),
            Semantics(label: 'Top Rated Movies', child: TopRatedCarousel()),
          ],
        ),
      ),
    );
  }
}
