import 'package:flutter/material.dart';

class ConstantText extends StatelessWidget {
  final String text;
  const ConstantText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: Color(0xff181725),
              fontFamily: 'Gilroy-Regular',
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {},
          child: const Text(
            "See all",
            style: TextStyle(
              color: Color(0xff53B175),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Gilroy-Regular',
            ),
          ),
        ),
      ],
    );
  }
}
