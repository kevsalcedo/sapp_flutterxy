import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sapp_flutterxy/data/carousel_data.dart';
import '../models/model_carousel.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Gap(40),
                Row(
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
                const Gap(25),
                Container(
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
                const Gap(25),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: carouselImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final carouselImage = carouselImages[index];
                      return CarouselImages(
                        carouselImage: carouselImages[index],
                      );
                    },
                    options: CarouselOptions(
                      height: 400.0,
                      initialPage: 0,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CarouselImages extends StatelessWidget {
  final Carousel carouselImage;
  const CarouselImages({Key? key, required this.carouselImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Go to promotion page'),
                action: SnackBarAction(
                  label: 'Go to Store',
                  onPressed: () {
                    // Code to execute.
                  },
                ),
              ),
            );
          },
          child: FadeInImage(
            placeholder: AssetImage("assets/loading1.gif"),
            image: AssetImage(carouselImage.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
