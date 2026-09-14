import 'package:flutter/material.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<String> _favoriteArtworks = [];

  List<String> get favoriteArtworks => _favoriteArtworks;

  bool isFavorite(String title) {
    return _favoriteArtworks.contains(title);
  }

  void toggleFavorite(String title) {
    if (_favoriteArtworks.contains(title)) {
      _favoriteArtworks.remove(title);
    } else {
      _favoriteArtworks.add(title);
    }

    notifyListeners();
  }
}
