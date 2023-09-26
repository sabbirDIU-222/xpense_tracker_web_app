import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constraints.dart';
import 'package:xpense_flutter_web/widget/commonContainer.dart';

class Container4 extends StatefulWidget {
  const Container4({Key? key}) : super(key: key);

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => MobileContainer4(),
      desktop: (p0) => DesktopContaier4(),
    );
  }

  Widget DesktopContaier4() {
    return CommonContainer(
        'Always Online',
        'Easy Access \nsupport \nwith Team',
        'Tell us More about your daily income',
        illustration2,
        true
    );
  }

// ================= mobile ================
  Widget MobileContainer4(){
    return CommonContainerMobile(
        'ALWAYS ONLINE',
        'Easy Access \nsupport \nwith Team',
        'Tell Us more About yourself',
        illustration2,
        true
    );
  }
}
