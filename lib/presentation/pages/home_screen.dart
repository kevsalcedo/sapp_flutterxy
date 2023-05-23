import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../utils/app_styles.dart';
import '../widgets/carousel_with_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                const Gap(40),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi dude!",
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Let's order!",
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/image_bakery.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(15),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xfff4f6fd)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentIcons.search_24_regular,
                          color: Color(0xffBDBDBD)),
                      Text("What are you looking for?",
                          style: Styles.headLineStyle4),
                    ],
                  ),
                ),
                const Gap(15),
                const CarouselWithIndicator(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
