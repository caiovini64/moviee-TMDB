import 'package:flutter/material.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class Cast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'CAST',
                style: AppTheme.to.theme.textTheme.headline1,
              ),
              TextButton(onPressed: () {}, child: Text('Show all')),
            ],
          ),
        ),
      ],
    );
  }
}
