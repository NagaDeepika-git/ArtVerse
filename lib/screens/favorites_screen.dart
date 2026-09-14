import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favorites_provider.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Favorites")),
      body: favoritesProvider.favoriteArtworks.isEmpty
          ? const Center(
              child: Text(
                "No favorite artworks yet ❤️",
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: favoritesProvider.favoriteArtworks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.favorite, color: Colors.red),
                  title: Text(favoritesProvider.favoriteArtworks[index]),
                );
              },
            ),
    );
  }
}
