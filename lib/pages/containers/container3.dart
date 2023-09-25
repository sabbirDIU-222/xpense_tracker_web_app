import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constraints.dart';
import 'package:xpense_flutter_web/widget/commonContainer.dart';

class Container3 extends StatefulWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => MobileContainer3(),
      desktop: (p0) => DesktopContaier3(),
    );
  }

  Widget DesktopContaier3() {
    return CommonContainer(
      'Always Online',
      'Real-time \nsupport \nwith cloud',
      'Tell us More about your daily income',
      illustration1,
      false
    );
  }

// ================= mobile ================
  Widget MobileContainer3(){
    return CommonContainerMobile(
      'ALWAYS ONLINE',
      'Real-time \nSupport \nwith cloud',
      'Tell Us more About yourself',
      illustration2,
      false
    );
  }
}
