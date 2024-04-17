import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {} ,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff00B36F),borderRadius: BorderRadius.circular(17) ),
      
        width: 45.67,
        height: 45.67,
        child: Center(child: IconButton(onPressed: (){}
        , icon: const Icon(Icons.add),color: const Color(0xffffffff),),),
      ),
    );
  }
}
