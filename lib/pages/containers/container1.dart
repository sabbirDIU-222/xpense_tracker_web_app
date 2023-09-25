import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constraints.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => MobileContainer1(),
      desktop: (p0) => DesktopContaier1(),
    );
  }

  Widget DesktopContaier1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w!/10,vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trac Your\nExpenses to\nSave Money',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                        height: 45,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(AppColors.primary)
                          ),
                            onPressed: () {
                              
                            }, icon: Icon(Icons.arrow_drop_down), label: Text(
                          'Try free Demo'
                        )))
                  ],
                )
              ],
            ),
          )),
          Expanded(child: Container(
            height: 530,
            decoration: BoxDecoration(image: DecorationImage(
              image: AssetImage(illustration1),fit: BoxFit.contain
            )),
          )),
        ],
      ),
    );
  }

// ================= mobile ================
  Widget MobileContainer1(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            width: w!/1.2,
            height: h!/1.2,
            decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage(illustration1),fit: BoxFit.contain
            )),
          ),
        SizedBox(height: 20,),
          Text(
            'Trac Your\nExpenses to\nSave Money',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 20,
                fontWeight: FontWeight.bold,
                height: 1),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Helps you to organize your income and expenses',
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 45,
              child: ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.primary)
                  ),
                  onPressed: () {

                  }, icon: Icon(Icons.arrow_drop_down), label: Text(
                  'Try free Demo'
              ))),
        ],
      ),
    );
  }
}
