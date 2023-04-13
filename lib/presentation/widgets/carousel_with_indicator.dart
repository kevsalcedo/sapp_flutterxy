import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../data/datasources/local/carousel_data.dart';
import '../../domain/models/model_carousel.dart';

class CarouselWithIndicator extends StatefulWidget {
  const CarouselWithIndicator({Key? key}) : super(key: key);

  @override
  State<CarouselWithIndicator> createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 180,
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
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
      ),
      const Gap(5),
      DotsIndicator(
        dotsCount: carouselImages.length,
        position: _current.toDouble(),
        decorator: DotsDecorator(
          color: Colors.grey,
          activeColor: Colors.green,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
    ]);
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
