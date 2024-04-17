import 'package:flutter/material.dart';
import '../Constants/const_color.dart';
import '../pre_made_widgets/rectengular_widget.dart'; // Import your custom card widget

class RectengularView extends StatelessWidget {
  final List<Map<String, String>> cardData;

  const RectengularView({
    Key? key,
    required this.cardData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: cardData.map((data) {
          Color backgroundColor = const Color(orangeColor).withOpacity(0.15);
          if (data['nameofproduct'] == 'Rice') {
            backgroundColor = const Color(greenColor).withOpacity(0.15);
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            child: RectengularWidget(
              colorinput: backgroundColor,
              imagePath: data['imagePath']!,
              nameofproduct: data['nameofproduct']!,
            ),
          );
        }).toList(),
      ),
    );
  }
}
