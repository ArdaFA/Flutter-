import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNav({super.key, required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        // unselected icon color
        color: Colors.grey[400],

        // bring the icons into the center of the bottombar
        mainAxisAlignment: MainAxisAlignment.center,

        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 35,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: [
          GButton(
            icon: Icons.home,
            text: ' Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: ' Cart',
          ),
        ],
      ),
    );
  }
}
