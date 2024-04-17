import 'package:flutter/material.dart';

class SearchBarMuavia extends StatelessWidget {
  const SearchBarMuavia({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
        hintText: 'Search Store',
        hintStyle: const TextStyle(
          fontFamily: 'Gilroy-Regular',
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        filled: true,
        fillColor: const Color(0xFFF2F3F2),
        prefixIcon: const Icon(
          Icons.search,
          size: 35,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 3,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 3,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
