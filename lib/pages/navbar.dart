// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:testi/pages/home.dart';
import 'package:testi/pages/product.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  // track index for display
  int _selectIndex = 0;

  // method update selected items
 void _navigationBottomBar(int index) {
  setState(() {
    _selectIndex = index;
  });
 }

  // list halaman
  final List _pages = [
    Homepage(),
    Product(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _navigationBottomBar,
        backgroundColor: Colors.brown[200],
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.brown[50],
        items: [
          // Home
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'),
          // Product
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Shop'),
        ],
      ),
    );
  }
}