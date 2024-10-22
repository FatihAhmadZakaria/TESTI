// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testi/util/fun_collection.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductList(),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Produk 1',
      'price': 'Rp 100.000',
      'sold': '10 Terjual',
      'image': 'https://via.placeholder.com/150'
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
      appBar: AppBar(
        title: Text('Daftar Produk'),
      ),
      body: GridBuilderTwo(items: products), // Menggunakan GridBuilderTwo dari fun_collection.dart
    );
  }
}