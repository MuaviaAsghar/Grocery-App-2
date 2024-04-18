import 'package:flutter/material.dart';

import '../screens/products_details.dart';

class RectengularWidget extends StatelessWidget {
  final String imagePath;
  final String nameofproduct;
  final Color colorinput;
  final String perpiece;
  final String price;


  const RectengularWidget({required this.price,
    required this.perpiece,
    required this.imagePath,
    required this.nameofproduct,
    required this.colorinput,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductDetail(

                    imageBgPath:
                        'assets/images/whitebg.png', // You may need to adjust this path
                    imagePath: imagePath,
                    productName: nameofproduct,
                    pricePerKg: perpiece,
                    price: price,
                    productInfo: '', // Add your product info here
                    nutirients: '', // Add your product nutrients here
                    feautureupdate: '',
                  ))),
      child: SizedBox(
        height: 105,
        width: 240,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          color: colorinput, // Assuming orangeColor is defined
          shadowColor: Colors.transparent,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset(
                  imagePath,
                  height: 70,
                  width: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      nameofproduct,
                      style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Gilroy-Regular',
                        fontWeight: FontWeight.w600,
                        height: 2.45,
                        color: Color(0xff3E423F),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
