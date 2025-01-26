import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {

  final List<String> imgList = [
    'assets/images/panther_image.jpg',
    'assets/images/shadow_image.jpg',
    'assets/images/star_war.jpg'
  ];
  int bannerCarouselActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarouselSlider(
          items: imgList!.map((imageUrl) {
            return LayoutBuilder(
              builder: (BuildContext context, constraints) {
                return Expanded(
                  child: Container(
                    width: constraints.maxWidth,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child: Image.asset(
                        imageUrl,
                        height: 60,
                        width: double.infinity, // Fills the width of the parent
                        fit: BoxFit.cover,),
                    ),
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 200,
            onPageChanged: (index, reason) {
              setState(() {
                bannerCarouselActiveIndex = index;
              });
            },
            autoPlay: true,
            autoPlayCurve: Curves.ease,
            autoPlayAnimationDuration: const Duration(seconds: 2),
            viewportFraction: 1,
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(imgList.length, (idx) {
              return bannerCarouselActiveIndex == idx
                  ? const ActiveDot()
                  : const InactiveDot();
            }),
          ),
        ),
      ],
    );
  }
}

class ActiveDot extends StatelessWidget {
  const ActiveDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  const InactiveDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
