// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  Homepage({super.key});

    List<String> names = ["Andi", "Budi", "Caca", "Dedi", "Eka", "Fani", "Gilang", "Hadi", "Ira", "Joko", "Kiki", "Lina", "Mira", "Nina", "Omar", "Putu", "Qori", "Rina", "Sinta", "Tomi"
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [

            Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple[100],
            child: Image.network("https://image.shutterstock.com/image-photo/coffee-mug-grinded-beans-concept-260nw-2500190129.jpg",
            fit: BoxFit.cover,),
            ),

            Container(
              color: Colors.brown[200],
              padding: EdgeInsets.all(7),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[400],
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(
                        Icons.history,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[400],
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[400],
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(
                        Icons.location_city,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),

                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.brown[100],
                child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(names[index]),
                  )),
              ),
            ),

          ],
        ),
    );
  }
}