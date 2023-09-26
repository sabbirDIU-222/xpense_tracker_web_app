import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:xpense_flutter_web/pages/containers/container1.dart';
import 'package:xpense_flutter_web/pages/containers/container3.dart';
import 'package:xpense_flutter_web/pages/containers/container4.dart';
import 'package:xpense_flutter_web/pages/containers/container5.dart';
import 'package:xpense_flutter_web/widget/navbar.dart';
import '../utils/constraints.dart';
import 'containers/container2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final autoScrollController = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        controller: autoScrollController,
        child: Container(
          child: Column(
            children: [
              NavBar(),
              Container1(),
              Container2(),
              Container3(),
              Container4(),
              Container5(),
            ],
          ),
        ),
      ),
    );
  }
}
