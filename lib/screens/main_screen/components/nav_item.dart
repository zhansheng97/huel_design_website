import 'package:flutter/material.dart';
import 'package:huel_design_website/constants.dart';

class NavItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const NavItem({
    Key key,
    @required this.title,
    this.isSelected = false,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: isSelected
                ? Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Color(0xFFE2BC5C),
                    ),
                  )
                : null,
          ),
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: kDefaultPadding / 4,
          ),
          child: Text(
            title,
            style: isSelected ? TextStyle(fontWeight: FontWeight.w600) : null,
          ),
        ),
      ),
    );
  }
}
