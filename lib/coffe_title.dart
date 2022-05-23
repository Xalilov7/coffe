import 'package:flutter/material.dart';

class CoffeTitle extends StatelessWidget {
  final String coffeImagePath;
  final String coffeName;
  final String coffePrice;
  CoffeTitle({Key? key, required this.coffeImagePath, required this.coffeName, required this.coffePrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(coffeImagePath),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coffeName, style: TextStyle(color: Colors.grey, fontSize: 20),),
                  SizedBox(height: 4,),
                  Text("With Almond Milk", style: TextStyle(color: Colors.grey[700]),)
                ],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(coffePrice, style: TextStyle(color: Colors.white),),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: Icon(Icons.add, color: Colors.white,)),
              ],
            ) ,)
          ],
        ),
      ),
    );
  }
}
