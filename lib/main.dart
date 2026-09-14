import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/splash_screen.dart';
import 'utils/app_theme.dart';
import 'providers/favorites_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FavoritesProvider(),
      child: const ArtVerseApp(),
    ),
  );
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
