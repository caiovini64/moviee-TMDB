import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/movies_controller.dart';

class MoviesPage extends GetView<MoviesController> {
  static const route = '/movies';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(controller.movieArgument)),
        body: SafeArea(child: Text('MoviesController')));
  }
}
