import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Expanded(
              child: Column(
        children: [
          Text('Your Cart'),
          Text('Your cart is empty'),
          Text('Browse Products'),
        ],
      ))),
    );
  }
}
