// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testi/util/fun_collection.dart';


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
              child: ProductList()
            ),

          ],
        ),
    );
  }
}
class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Kopi Arabika',
      'price': 'Rp 100.000',
      'sold': '10 Terjual',
      'image': 'https://asset.kompas.com/crops/4fP8U62oSLmw8KRY3058k0dIzYU=/0x46:1000x712/750x500/data/photo/2019/10/29/5db817bc7275a.jpg'
    },
    {
      'name': 'Produk 2',
      'price': 'Rp 150.000',
      'sold': '5 Terjual',
      'image': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Produk 3',
      'price': 'Rp 200.000',
      'sold': '15 Terjual',
      'image': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Produk 4',
      'price': 'Rp 250.000',
      'sold': '8 Terjual',
      'image': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Produk 5',
      'price': 'Rp 300.000',
      'sold': '12 Terjual',
      'image': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Produk 6',
      'price': 'Rp 350.000',
      'sold': '20 Terjual',
      'image': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Produk 7',
      'price': 'Rp 400.000',
      'sold': '25 Terjual',
      'image': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Produk 8',
      'price': 'Rp 450.000',
      'sold': '18 Terjual',
      'image': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Produk 9',
      'price': 'Rp 500.000',
      'sold': '30 Terjual',
      'image': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Produk 10',
      'price': 'Rp 550.000',
      'sold': '7 Terjual',
      'image': 'https://via.placeholder.com/150'
    },
  ];

  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridBuilderTwo(items: products), // Menggunakan GridBuilderTwo dari fun_collection.dart
    );
  }
}