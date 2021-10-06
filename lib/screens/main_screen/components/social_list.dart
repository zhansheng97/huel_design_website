import 'package:flutter/material.dart';

class SocialList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Image.asset(
            "assets/icons/user.png",
            height: 16,
          ),
          onPressed: () {
            print("user");
          },
        ),
        IconButton(
          icon: Image.asset(
            "assets/icons/search.png",
            height: 16,
          ),
          onPressed: () {
            print("search");
          },
        ),
        IconButton(
          icon: Image.asset(
            "assets/icons/shopping-cart.png",
            height: 16,
          ),
          onPressed: () {
            print("cart");
          },
        ),
      ],
    );
  }
}
