import 'package:flutter/material.dart';
import 'package:huel_design_website/screens/main_screen/components/logo.dart';
import 'package:huel_design_website/screens/main_screen/components/nav_list.dart';
import 'package:huel_design_website/screens/main_screen/components/social_list.dart';

import '../../../constants.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          color: kGreyColor4,
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 40),
            child: Row(
              children: [
                Column(
                  children: [
                    Logo(),
                    const SizedBox(height: 5),
                  ],
                ),
                Spacer(),
                NavList(),
                Spacer(),
                SocialList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
