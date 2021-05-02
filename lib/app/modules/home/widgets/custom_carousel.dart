import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCarousel extends StatelessWidget {
  final Widget child;
  final double childHeight;
  final int childCount;
  const CustomCarousel({this.child, this.childHeight, this.childCount});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * childHeight,
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: childCount,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return child;
          }),
    );
  }
}
