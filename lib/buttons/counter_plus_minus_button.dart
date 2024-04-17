import 'package:flutter/material.dart';

import '../Constants/const_color.dart';


class CounterPlusMinus extends StatefulWidget {
  const CounterPlusMinus({Key? key});

  @override
  State<CounterPlusMinus> createState() => _CounterPlusMinusState();
}

class _CounterPlusMinusState extends State<CounterPlusMinus> {
  int numberofproduct = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if (numberofproduct > 1) {
                  numberofproduct--;
                }
              });
            },
            icon: const Icon(
              Icons.remove,
              color: Color(minuscolor),
            ),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 146, 146, 146),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                numberofproduct.toString(),
                style: const TextStyle(
                  color: Color(0xff181725),
                  fontSize: 18,
                  fontFamily: 'Gilroy-Regular',
                  fontWeight: FontWeight.w600,
                  height: 1.8,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                numberofproduct++;
              });
            },
            icon: const Icon(
              Icons.add,
              color: Color(0xff53B175),
            ),
          ),
        ],
      ),
    );
  }
}
