import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceryapp2/Constants/constants.dart';
import 'package:groceryapp2/listview/horizontal_list_view.dart';
import 'package:groceryapp2/pre_made_widgets/searchbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../Constants/constant_text.dart';
import '../banners/banners.dart';
import '../listview/rectengular_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/AppbarIcon.svg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  color: const Color(0xff393636),
                  onPressed: () {},
                  icon: const Icon(Icons.location_on),
                ),
                const Text(
                  'Drigh Road, Karachi',
                  style: TextStyle(
                    color: Color(0xff4C4F4D),
                    fontFamily: 'Gilroy-Regular',
                    fontWeight: FontWeight.w600,
                    height: 2.205,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SearchBarMuavia(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: CarouselSlider(
                items: const [
                  MABanner(imageURL: CImages.banner1),
                  MABanner(imageURL: CImages.banner2),
                ],
                options: CarouselOptions(
                  height: 120,
                  viewportFraction: 1,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: ConstantText(text: "Exclusive Offer"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: HorizontalCardList(cardData: exclusiveOffer),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: ConstantText(text: "Best Selling"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: HorizontalCardList(cardData: bestSelling),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: ConstantText(text: 'Groceries'),
            ),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RectengularView(
                cardData: groceries,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: HorizontalCardList(cardData: groceries2),
            ),
          ],
        ),
      ),
    );
  }
}
