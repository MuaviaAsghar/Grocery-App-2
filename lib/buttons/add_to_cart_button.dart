import 'package:flutter/material.dart';

class AddToBasketButton extends StatelessWidget {
  const AddToBasketButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center, // Center the button horizontally
      // Adjust the margin as needed
      child: ElevatedButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Placeholder())),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF53B175),
          minimumSize: const Size(353, 67),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        child: const Text(
          'Add To Basket ',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Gilroy-Regular',
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}


