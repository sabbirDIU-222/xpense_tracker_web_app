import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constraints.dart';
import 'package:xpense_flutter_web/widget/commonContainer.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
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
        'Developer \nsupport \nwith Content',
        'Tell us More about your daily income',
        illustrator,
        false
    );
  }

// ================= mobile ================
  Widget MobileContainer3(){
    return CommonContainerMobile(
        'ALWAYS ONLINE',
        'Developer \nsupport \nwith Content',
        'Tell Us more About yourself',
        illustrator,
        false
    );
  }
}
