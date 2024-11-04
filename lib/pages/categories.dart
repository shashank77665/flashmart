import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
            child: Column(
          children: [
            Text('All Categories'),
            Text('Categorie'),
            Text('Categorie'),
            Text('Categorie'),
            Text('Categorie'),
          ],
        )),
      ),
    );
  }
}
