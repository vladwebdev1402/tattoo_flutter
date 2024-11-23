import 'package:flutter/material.dart';

class ShopItemScreen extends StatelessWidget {
  final String id;

  const ShopItemScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(id),
      ),
    );
  }
}
