import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:tmdb_api/app/modules/home/pages/search/controller.dart';
import 'package:tmdb_api/app/modules/home/pages/search/widgets/search_bar.dart';

class SearchPage extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SearchBar(),
          ],
        ),
      ),
    );
  }
}
