import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/const_color.dart';
import '../buttons/add_to_cart_button.dart';
import '../buttons/counter_plus_minus_button.dart';

class ProductDetail extends StatefulWidget {
  final String imageBgPath;
  final String imagePath;
  final String productName;
  final String pricePerKg;
  final String price;
  final String productInfo;
  final String nutirients;
  final String feautureupdate;
  const ProductDetail({
    super.key,
    required this.imageBgPath,
    required this.imagePath,
    required this.productName,
    required this.pricePerKg,
    required this.nutirients,
    required this.price,
    required this.productInfo,
    required this.feautureupdate,  // Corrected variable name
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isFavorited = false;
  bool isExpandedNutrients = false;
  bool isExpanded = false;
  bool isExpandedReviews = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [ 
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.share,
                color: Color(0xff181725),
              ))
        ],
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/whitebg.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 380,
                  decoration: const BoxDecoration(
                    color: Color(0x0ff2f3f2),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          widget.imageBgPath,
                          height: 380,
                          color: const Color(0x0ff2f3f2).withOpacity(0.5),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          widget.imagePath,
                          height: 200,
                          width: 330,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.productName,
                    style: const TextStyle(
                      fontFamily: 'Gilroy-Bold',
                      fontSize: 24,
                      height: 1.8,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                      color: Color(0xff181725),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorited = !isFavorited;
                      });
                    },
                    child: Icon(
                      isFavorited ? Icons.favorite : Icons.favorite_border,
                      color: isFavorited
                          ? const Color.fromARGB(255, 207, 25, 12)
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.pricePerKg,
                    style: const TextStyle(
                      fontFamily: 'Gilroy-Regular',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      height: 1.8,
                      color: Color(customColor),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CounterPlusMinus(),
                  Text(
                    widget.price,
                    style: const TextStyle(
                      color: Color(0xff181725),
                      fontSize: 24,
                      fontFamily: 'Gilroy-Bold',
                      height: 1.8,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Container(
                height: 1,
                color: const Color(0x00e2e2e2).withOpacity(0.7),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Product Detail",
                    style: TextStyle(
                        color: Color(0xff181725),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Gilroy-Regular'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_right,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            if (isExpanded)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Text(
                  widget.productInfo, // Used widget.productinfo here
                  style: const TextStyle(
                    fontFamily: 'Gilroy-Medium',
                    fontSize: 13,
                    height: 2.1,
                    color: Color(0xff7C7C7C),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Container(
                height: 1,
                color: const Color(0x00e2e2e2).withOpacity(0.7),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Nutiritions",
                    style: TextStyle(
                        color: Color(0xff181725),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Gilroy-Regular'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                        height: 18,
                        width: 34,
                        child: const Center(
                            child: Text(
                          "100gm",
                          style: TextStyle(
                              color: Color(0xff7C7C7C),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Gilroy-Regular',
                              height: 1.35,
                              fontSize: 9),
                        )),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isExpandedNutrients = !isExpandedNutrients;
                          });
                        },
                        child: Icon(
                          isExpandedNutrients
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_right,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (isExpandedNutrients)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Text(
                  widget.nutirients, // Used widget.productinfo here
                  style: const TextStyle(
                    fontFamily: 'Gilroy-Medium',
                    fontSize: 13,
                    height: 2.1,
                    color: Color(0xff7C7C7C),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Container(
                height: 1,
                color: const Color(0x00e2e2e2).withOpacity(0.7),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Reviews ",
                    style: TextStyle(
                        color: Color(0xff181725),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Gilroy-Regular'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpandedReviews = !isExpandedReviews;
                      });
                    },
                    child: Icon(
                      isExpandedReviews
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_right,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            if (isExpandedReviews)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Center(
                  child: Text(
                    widget.feautureupdate, // Used widget.productinfo here
                    style: const TextStyle(
                      fontFamily: 'Gilroy-Regular',
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ),
              ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [AddToBasketButton()]),
            )
          ],
        ),
      ),
    );
  }
}
