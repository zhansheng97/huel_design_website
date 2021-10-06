import 'package:flutter/material.dart';
import 'package:huel_design_website/screens/main_screen/components/nav_item.dart';

class NavList extends StatefulWidget {
  @override
  _NavListState createState() => _NavListState();
}

class _NavListState extends State<NavList> {
  final List<String> navItems = [
    "Home",
    "Products",
    "Categories",
    "News",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          navItems.length,
          (index) => NavItem(
            title: navItems[index],
            isSelected: index == currentIndex,
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}
