import 'package:flutter/material.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 30),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.to.theme.accentColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(color: AppTheme.to.theme.buttonColor),
              icon: Icon(
                Icons.search,
                color: AppTheme.to.theme.buttonColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
