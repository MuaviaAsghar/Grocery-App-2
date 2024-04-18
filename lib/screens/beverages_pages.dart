import 'package:flutter/material.dart';
import 'package:groceryapp2/pre_made_widgets/card.dart';

import '../Constants/constants.dart';
import 'products_details.dart';

class BeveragesPage extends StatelessWidget {
  const BeveragesPage({super.key,});

  // List of data for beverages


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter, color: Colors.black),
          ),
        ],
        title: const Text(
          "Beverages",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Gilroy-Bold',
            fontWeight: FontWeight.bold,
            height: 1.8,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.2, // Adjust as needed
          ),
          itemCount: beveragesData.length,
          itemBuilder: (context, index) {
            final data = beveragesData[index];
            return GestureDetector(
              onTap: () {
                // Navigate to product details page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetail(
                      imageBgPath: data['assets/images/.png'],
                      imagePath: data['imagePath'],
                      productName: data['productName'],
                      pricePerKg: data['pricePerPiece'],
                      price: data['price'],
                      productInfo: data['productInfo'],
                      nutirients: data['nutrients'],
                      feautureupdate: data['featureUpdate'],
                    ),
                  ),
                );
              },
              child: custom_card(
                perpiece: data['pricePerPiece'],
                price: data['price'],
                imagePath: data['imagePath'],
                nameofproduct: data['productName'],
              ),
            );
          },
        ),
      ),
    );
  }
}
