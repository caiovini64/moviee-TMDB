import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class LogoText extends StatelessWidget {
  final double fontSize;
  const LogoText({
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.majorMonoDisplay(
        fontSize: fontSize,
        color: AppTheme.to.theme.buttonColor,
        fontWeight: FontWeight.bold,
      ),
      child: AnimatedTextKit(
        animatedTexts: [WavyAnimatedText('Moviee')],
      ),
    );
  }
}
