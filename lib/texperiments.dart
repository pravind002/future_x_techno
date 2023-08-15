import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class CustomSwipe extends StatefulWidget {
  const CustomSwipe({super.key});

  @override
  State<CustomSwipe> createState() => _CustomSwipeState();
}

class _CustomSwipeState extends State<CustomSwipe> {
  final pages = [
    Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
          color: Colors.amber.withOpacity(.2),
          image: const DecorationImage(
              image: AssetImage(
                'asset/m (1).jpg',
              ),
              fit: BoxFit.cover)),
    ),
    Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
          color: Colors.red.withOpacity(.2),
          image: const DecorationImage(
              image: AssetImage(
                'asset/m (6).jpg',
              ),
              fit: BoxFit.cover)),
    ),
    // Container(
    //   height: Get.height,
    //   width: Get.width,
    //   decoration: BoxDecoration(
    //       color: Colors.amber.withOpacity(.2),
    //       image: const DecorationImage(
    //           image: AssetImage(
    //             'asset/m (2).jpg',
    //           ),
    //           fit: BoxFit.cover)),
    // ),
    Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
          color: Colors.amber.withOpacity(.2),
          image: const DecorationImage(
              image: AssetImage(
                'asset/m (3).jpg',
              ),
              fit: BoxFit.cover)),
    ),
    Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
          color: Colors.amber.withOpacity(.2),
          image: const DecorationImage(
              image: AssetImage(
                'asset/m (4).jpg',
              ),
              fit: BoxFit.cover)),
    ),
    Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
          color: Colors.amber.withOpacity(.2),
          image: const DecorationImage(
              image: AssetImage(
                'asset/m (5).jpg',
              ),
              fit: BoxFit.cover)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
          builder: (context) =>
              LiquidSwipe(waveType: WaveType.liquidReveal, pages: pages)),

      // LiquidSwipe(
      //   fullTransitionValue: 880,
      //   waveType: WaveType.liquidReveal,
      //   positionSlideIcon: .8,
      //   pages: const [
      //     Text('Page One'),
      //     Text('Page Two'),
      //     Text('Page Three '),
      //     Text('Page Four'),
      //     Text('Page Five'),

      //   ],
      // ),
    );
  }
}
