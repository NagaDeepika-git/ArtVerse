import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(const ArtVerseApp());
}

class ArtVerseApp extends StatelessWidget {
  const ArtVerseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ArtVerse',
      theme: AppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}
