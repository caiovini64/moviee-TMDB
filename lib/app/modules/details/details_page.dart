import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/details/details_controller.dart';
import 'package:tmdb_api/app/modules/details/widgets/cast.dart';
import 'package:tmdb_api/app/modules/details/widgets/info_details.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class DetailsPage extends GetView<DetailsController> {
  static const route = '/details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.to.theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            InfoDetails(),
            Cast(),
          ],
        ),
      ),
    );
  }
}
