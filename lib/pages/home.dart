import 'package:flutter/material.dart';
import 'package:xpense_flutter_web/pages/containers/container1.dart';
import 'package:xpense_flutter_web/pages/containers/container3.dart';
import 'package:xpense_flutter_web/widget/navbar.dart';
import '../utils/constraints.dart';
import 'containers/container2.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
     w = MediaQuery.of(context).size.width;
     h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              NavBar(),
              Container1(),
              Container2(),
              Container3(),
            ],
          ),
        ),
      ),
    );
  }
}
