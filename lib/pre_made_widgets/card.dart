import 'package:flutter/material.dart';
import 'package:groceryapp2/buttons/add_buttons.dart';
import 'package:groceryapp2/screens/products_details.dart';

// ignore: camel_case_types
class custom_card extends StatelessWidget {
  final String imagePath;
  final String nameofproduct;
  final String perpiece;
  final String price;

  const custom_card({
    super.key, // Corrected key parameter
    required this.imagePath,
    required this.nameofproduct,
    required this.perpiece,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 173.32,
      height: 248.51,
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 10,
        color: const Color(0x00ffffff),
        shadowColor: Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 18,
                bottom: 16,
              ),
              child: GestureDetector(
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
                child: Image.asset(
                  imagePath, // Removed color: Colors.transparent
                  height: 80,
                  width: 100,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
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
                                  nutirients:
                                      '', // Add your product nutrients here
                                  feautureupdate: '',
                                ))),
                    child: Text(
                      nameofproduct,
                      style: const TextStyle(
                        color: Color(0xff181725),
                        fontFamily: 'Gilroy-Bold',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.1,
                        height: 1.8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    perpiece,
                    style: const TextStyle(
                      color: Color(0xff7C7C7C),
                      fontFamily: 'Gilroy-Medium',
                      fontSize: 14,
                      height: 1.8,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
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
                                  nutirients:
                                      '', // Add your product nutrients here
                                  feautureupdate: '',
                                ))),
                    child: Text(
                      price,
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Gilroy-Bold',
                        height: 1.8,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ),
                  const AddButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GroceriesRowWidget extends StatelessWidget {
  final Color colorinput;
  final String imagePath;
  final String productname;

  const GroceriesRowWidget({
    super.key,
    required this.colorinput,
    required this.imagePath,
    required this.productname,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: SizedBox(
        height: 105,
        width: 240,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          color: colorinput,
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
                child: Text(
                  productname,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Gilroy-Regular',
                    fontWeight: FontWeight.w600,
                    height: 2.45,
                    color: Color(0xff3E423F),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
