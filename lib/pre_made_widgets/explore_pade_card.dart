import 'package:flutter/material.dart';

class ExplorePageCard extends StatelessWidget {
  final String imagePathCard;
  final String productType;
  final int colorInputUser;

  const ExplorePageCard({super.key, 
    required this.productType,
    required this.imagePathCard,
    required this.colorInputUser,
  });

  @override
  Widget build(BuildContext context) {
    double boxOpacity = 0.1;
    double borderOpacity = 0.7;

    if (colorInputUser == fruitandvegColor ||
        colorInputUser == cookingoilColor) {
      boxOpacity = 0.1;
      borderOpacity =
          0.75; // Set border opacity to 75% for fruitandveg and cookingoil colors
    } else {
      boxOpacity = 0.25;
    }

    return Column(
      children: [
        SizedBox(
          height: 190,
          width: 175,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color(colorInputUser).withOpacity(boxOpacity),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              border: Border.all(
                width: 1,
                color: Color(colorInputUser).withOpacity(borderOpacity),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x00000000),
                  blurRadius: 12,
                  offset: Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 10, left: 20, right: 20),
                    child: Card(
                      child: Image.asset(
                        imagePathCard,
                        width: 101.265,
                        height: 75.933,
                      ),
                    ),
                  ),
                ),
                Text(
                  productType,
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.bold,
                      height: 2.2,
                      color: Color(0xff181725),
                      letterSpacing: 0.1),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Constants for colors
const fruitandvegColor = 0xff53B175;
const cookingoilColor = 0xffF8A44C;
const meatandfishColor = 0xffF7A593;
const bakeryandsnacksColor = 0xffD3B0E0;
const dairyandeggsColor = 0xffFDE598;
const beveragesColor = 0xffB7DFF5;
