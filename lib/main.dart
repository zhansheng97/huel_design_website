import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:huel_design_website/constants.dart';
import 'package:huel_design_website/screens/main_screen/components/top_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Huel HomePage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kGreyColor5,
              displayColor: kGreyColor5,
            ),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                ),
              ),
              Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: kGreyColor1,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: kGreyColor2,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 90,
                      left: 90,
                      right: 90,
                      bottom: 90,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          print(constraints.maxHeight);
                          print(constraints.maxWidth);
                          return Container(
                            height: 500,
                            width: 700,
                            // color: Colors.blue,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: ClipPath(
                                    clipper: _CustomBoxClipper(),
                                    child: Container(
                                      height: 500,
                                      width: constraints.maxWidth * 0.7,
                                      color: kGreyColor3,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                          "assets/images/huel.png",
                                        ),
                                      ),
                                      RotatedBox(
                                        quarterTurns: 3,
                                        child: SizedBox(
                                          width: 210,
                                          height: 95,
                                          child: Text(
                                            "Huel",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 100,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopNavBar(),
              Expanded(
                child: Container(
                  // color: Colors.blue,
                  child: Row(
                    children: [
                      Container(
                        width: 165,
                        padding: EdgeInsets.only(left: kDefaultPadding),
                        // color: Colors.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/facebook.png",
                              height: 12,
                            ),
                            const SizedBox(height: kDefaultPadding),
                            Image.asset(
                              "assets/icons/twitter.png",
                              height: 12,
                            ),
                            const SizedBox(height: kDefaultPadding),
                            Image.asset(
                              "assets/icons/instagram.png",
                              height: 12,
                            ),
                          ],
                        ),
                      ),
                      HeaderDescription(),
                      Spacer(),
                      ScrollAndColorBar(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ScrollAndColorBar extends StatelessWidget {
  const ScrollAndColorBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      width: 90,
      padding: EdgeInsets.only(left: 15),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_upward,
              color: kGreyColor5,
            ),
            onPressed: () {},
          ),
          const SizedBox(height: kDefaultPadding),
          ...List.generate(
            colorList.length,
            (index) => CustomColorDot(
              color: colorList[index],
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          IconButton(
            icon: Icon(
              Icons.arrow_downward,
              color: kGreyColor5,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class CustomColorDot extends StatelessWidget {
  final Color color;

  const CustomColorDot({
    Key key,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

class _CustomBoxClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height - 100)
      ..quadraticBezierTo(0, size.height, 100, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 100)
      ..quadraticBezierTo(size.width, 0, size.width - 100, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class HeaderDescription extends StatelessWidget {
  const HeaderDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Huel",
                style: TextStyle(
                  fontSize: 52,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "®",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  // color: kGreyColor5,
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          Text(
            "Huel is nutritionally complete food that contains all 27 essential vitamins and minerals, protein, essential fatty acids, carbs, fibre and phytonutrients.",
            style: TextStyle(
              color: kGreyColor5.withOpacity(0.5),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 15),
            decoration: BoxDecoration(color: kGreyColor5),
            child: Text(
              "Add to your cart",
              style:
                  TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
