import 'package:flutter/material.dart';

import '../widgets/artwork_card.dart';
import '../widgets/artist_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = "Trending";

  final List<String> categories = [
    "Trending",
    "Popular",
    "Abstract",
    "Modern",
    "AI Art",
    "Photography",
  ];

  Widget categoryChip(String title) {
    bool isSelected = selectedCategory == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = title;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFF9966) : const Color(0xFF151C33),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white70,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Evening 👋",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Deepika",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 28,
                      backgroundColor: Color(0xFFFF9966),
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFF9966), Color(0xFFFF5E62)],
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Explore Creative Worlds",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Discover thousands of artworks and artists from around the world.",
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                        child: const Text("Explore Now"),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF151C33),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Search artworks...",
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 18),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Categories",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 15),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: categories
                        .map((category) => categoryChip(category))
                        .toList(),
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Trending Artists",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ArtistCard(
                        name: "Sophia",
                        imageUrl: "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
                      ),
                      ArtistCard(
                        name: "Emma",
                        imageUrl: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80",
                      ),
                      ArtistCard(
                        name: "James",
                        imageUrl: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                      ),
                      ArtistCard(
                        name: "Olivia",
                        imageUrl: "https://images.unsplash.com/photo-1544005313-94ddf0286df2",
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Featured Artworks",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  height: 320,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ArtworkCard(
                        imageUrl: "https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5",
                        title: "Abstract Dreams",
                        artist: "Sophia Carter",
                      ),
                      ArtworkCard(
                        imageUrl: "https://images.unsplash.com/photo-1541961017774-22349e4a1262",
                        title: "Color Symphony",
                        artist: "Emma Wilson",
                      ),
                      ArtworkCard(
                        imageUrl: "https://images.unsplash.com/photo-1460661419201-fd4cecdf8a8b",
                        title: "Modern Vision",
                        artist: "James Smith",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
