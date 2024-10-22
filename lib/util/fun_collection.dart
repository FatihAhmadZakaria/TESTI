// fun_collection.dart

import 'package:flutter/material.dart';

// Kelas untuk ProductCard
class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.network(product['image'], fit: BoxFit.cover),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product['name'],
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(product['price']),
                  ],
                ),
                Text(product['sold'], style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// GridBuilder 2 kolom
class GridBuilderTwo extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const GridBuilderTwo({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ProductCard(product: items[index]);
      },
    );
  }
}