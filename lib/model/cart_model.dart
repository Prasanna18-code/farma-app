import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    [
      "Apple",
      "65.00",
      "lib/images/apple.png",
      const Color.fromARGB(255, 95, 215, 99)
    ],
    ["banana", "89.00", "lib/images/banana.png", Colors.yellow],
    ["Grapes", "70.00", "lib/images/grapes.png", Colors.purple],
    ["orange", "56.00", "lib/images/orange.png", Colors.orange],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addItemsToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemsFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
