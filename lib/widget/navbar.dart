import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/styles.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => MobileNavBar(),
      desktop: (p0) => DesktopNavBar(),
    );
  }

  // =============for mobile==============

  Widget MobileNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          navlogo(),
        ],
      ),
    );
  }



  //============================= desktop things======================
  Widget DesktopNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navlogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About Us'),
              navButton('Pricing'),
              navButton('FeedBack'),
            ],
          ),
          Container(
            child: ElevatedButton(
              style: borderButtonstyle,
              onPressed: () {},
              child: Text('Request a Demo',style: TextStyle(color: AppColors.primary),),
            ),
          ),
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          onPressed: () {
          },
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          )),
    );
  }


  Widget navlogo() {
    return Container(
      width: 110,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/logo.png'))),
    );
  }
}
