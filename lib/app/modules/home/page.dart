import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/controller.dart';
import 'package:tmdb_api/app/modules/home/widgets/buttons_bar.dart';
import 'package:tmdb_api/app/modules/home/widgets/popular_carousel.dart';
import 'package:tmdb_api/app/modules/home/widgets/recommended_carousel.dart';
import 'package:tmdb_api/app/modules/home/widgets/search_bar.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class HomePage extends GetView<HomeController> {
  static const route = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.to.darkTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SearchBar(),
              SizedBox(height: 30),
              PopularCarousel(),
              SizedBox(height: 30),
              ButtonsBar(),
              SizedBox(height: 30),
              RecommendedCarousel(),
            ],
          ),
        ),
      ),
    );
  }
}
