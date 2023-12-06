import 'package:online_shop/components/coffee_tile.dart';
import 'package:online_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/coffee_tile.dart';
import '../models/coffee.dart';
import '../models/coffee_shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add it to the Cart
  void addToCart(Coffee coffee){
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [

            // Heading
            const Text("SCRUBIES",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            // space to seperate
            const SizedBox(height: 25,
            ),

            // list of coffee to buy
            // to use the rest of this column, we should use Expanded widget
            Expanded(child: ListView.builder(
              // item count
                itemCount: value.coffeeShop.length,
                itemBuilder: (context, index) {
                  // get individual coffee
                  Coffee eachCoffee = value.coffeeShop[index];

                  // return the tile for this coffee
                  return CoffeeTile(
                    coffee: eachCoffee,
                    icon: Icon(Icons.add),
                    onPressed: () => addToCart(eachCoffee),
                  );

                }),
            )
          ],
        ),
      ),
    ),);
  }
}
