import 'package:coffe/coffe_title.dart';
import 'package:coffe/coffe_type.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeType = [
     [
        "Cappucino",
       true,
     ],
    [
      "Latte",
      false,
    ],
    [
      "Black",
      false,
    ],
    [
      "Tea",
      false,
    ],
  ];

  void coffeTypeSelect(int index){
    setState(() {
      for (int i =0; i <coffeType.length; i++){
        coffeType[i][1] = false;
      }
      coffeType[index][1] = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [Padding(padding: EdgeInsets.only(right: 10.0),  child: Icon(Icons.person))],
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "" ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "")
        ],
      ),
      body: Column(
        children: [
          Padding( padding: EdgeInsets.symmetric(horizontal: 25.0), child: Text("Find the best coffe for you", style: TextStyle(
            fontSize: 36,
            color: Colors.white
          ),),
          ),
          SizedBox(height: 25),
          Container(
           height: 50,
            child: ListView.builder( scrollDirection: Axis.horizontal,  itemCount: coffeType.length,  itemBuilder: (context, index){
           return CoffeType(coffeType: coffeType[index][0], isSelect: coffeType[index][1], onTap: () {
             coffeTypeSelect(index);
           });
            }  )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Find your coffe...",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Expanded(child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeTitle(
                coffeImagePath: "assets/thumb-1920-394204.jpg",
                coffeName: "Title",
                coffePrice: "\$220",
              ),
              CoffeTitle(
                coffeImagePath: "assets/thumb-1920-394204.jpg",
                coffeName: "Title",
                coffePrice: "\$220",
              ),
              CoffeTitle(
                coffeImagePath: "assets/thumb-1920-394204.jpg",
                coffeName: "Title",
                coffePrice: "\$220",
              ),
            ],
          ))
        ],
      ),
     );
  }
}
