import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {

  // coffee for sale List
  final List<Coffee> _shop = [

    // purple
    Coffee(name: 'Purple Scrubs', price: "39,90 €", imagePath: 'lib/clothesx/purple.png'),

    // purple
    Coffee(name: 'Black Pro Scrubs', price: "59,90 €", imagePath: 'lib/clothesx/black.png'),

    // orange
    Coffee(name: 'Orange Scrubs', price: "39,90 €", imagePath: 'lib/clothesx/orange.png'),

    // blue
    Coffee(name: 'Blue Scrubs', price: "39,90 €", imagePath: 'lib/clothesx/blue.png'),

    // 3 pack
    Coffee(name: '3 Scrubs', price: "109,90 €", imagePath: 'lib/clothesx/colors.png'),

    // black Coffee
    Coffee(name: 'Long Black', price: "4€", imagePath: 'lib/coffee_images/coffee_590836.png'),

    // iced coffee
    Coffee(name: 'Iced Coffee', price: "4.90€", imagePath: 'lib/coffee_images/iced-coffee_5194354.png'),

    // latte
    Coffee(name: 'Long Black', price: "5€", imagePath: 'lib/coffee_images/latte_2935307.png'),



  ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }

}