import 'package:flutter/material.dart';
import '../Constants/constants.dart';
import '../pre_made_widgets/explore_pade_card.dart';
import 'beverages_pages.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  // List of data for Explore Page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Find Products",
          style: TextStyle(
            fontFamily: 'Gilroy-Bold',
            fontSize: 20,
            height: 1.8,
            color: Color(0xff181725),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Search Store',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy-Regular',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF2F3F2),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 35,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.75, // Adjust the aspect ratio as needed
                ),
                itemCount: exploreData.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final data = exploreData[index];
                  return GestureDetector(
                    onTap: () {
                      // Navigate to the respective page based on the category
                      if (data['productType'] == 'Beverages') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BeveragesPage()),
                        );
                      } else {
                        // Add more navigation logic for other categories if needed
                      }
                    },
                    child: ExplorePageCard(
                      productType: data['productType'],
                      imagePathCard: data['imagePathCard'],
                      colorInputUser: data['colorInputUser'],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Constants for colors
