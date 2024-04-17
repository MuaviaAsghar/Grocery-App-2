import 'package:flutter/material.dart';


import '../pre_made_widgets/card.dart'; // Import your custom card widget

class HorizontalCardList extends StatelessWidget {
  final List<Map<String, String>> cardData;

  const HorizontalCardList({
    super.key,
    required this.cardData,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: cardData.map((data) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 15),
            child: custom_card(
              imagePath: data['imagePath']!,
              nameofproduct: data['nameofproduct']!,
              perpiece: data['perpiece']!,
              price: data['price']!,
            ),
          );
        }).toList(),
      ),
    );
  }
}
