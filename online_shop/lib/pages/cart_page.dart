import 'package:online_shop/components/coffee_tile.dart';
import 'package:online_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  // remove cart item
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [

            // heading
            const Text('Your Cart', style: TextStyle(fontSize: 20),),

            // space to seperate
            const SizedBox(height: 25,),

            // list of Cart
            Expanded(child: ListView.builder(
                itemCount: value.userCart.length,
                itemBuilder: (context, index){
                  // get individual coffees
                  Coffee eachCoffee = value.userCart[index];

                  // return coffee Tile
                  return CoffeeTile(
                      coffee: eachCoffee,
                      onPressed: () => removeFromCart(eachCoffee),
                      icon: Icon(Icons.delete));
                }),)


          ],
        ),
      ),
    ), );
  }
}
