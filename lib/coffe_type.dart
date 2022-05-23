import 'package:flutter/material.dart';
class CoffeType extends StatelessWidget {
  final String coffeType;
  final bool isSelect;
  final VoidCallback onTap;
  const CoffeType({Key? key, required this.coffeType, required this.isSelect, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text(coffeType, style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isSelect ?  Colors.orange : Colors.white
        ),),
      ),
    );
  }
}
