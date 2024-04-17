import 'package:flutter/material.dart';


class MABanner extends StatelessWidget {
  final String imageURL;

  const MABanner({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // border: Border.all(width: 1),
      ),
      child: ClipRRect(
        
        borderRadius: BorderRadius.circular(8),
        child: Image(
          image: AssetImage(imageURL),
          
          
        ),
      ),
    );
  }
}
