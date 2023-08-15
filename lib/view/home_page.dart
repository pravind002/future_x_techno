import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Color> colors = [
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.orangeAccent,
    Colors.deepPurpleAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('F U T U R E   X'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'asset/wpp.png',
                color: Colors.amber,
              )),
          IconButton(onPressed: () {}, icon: Image.asset('asset/insta.png')),
          IconButton(onPressed: () {}, icon: Image.asset('asset/fb.png')),
          IconButton(onPressed: () {}, icon: Image.asset('asset/in.png')),
          IconButton(onPressed: () {}, icon: Image.asset('asset/git.png')),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // color: Colors.yellow,
              height: 500,
              width: MediaQuery.of(context).size.width,

              child: CarouselSlider(
                  items: [
                    for (int i = 0; i < colors.length; i++) ...[
                      Container(
                        color: colors[i],

                        ///************ ALWAYS COPY AND PASE FROM HERE */
                      )
                    ]
                  ],
                  options: CarouselOptions(
                    height: 500,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black54),
            Container(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width,
              color: Colors.yellowAccent,
              child: const Text('Our Project OR Team Or Srvivice'),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .75,
              width:MediaQuery.of(context).size.width ,
              color: Colors.black,
              child: const Text('Company Info'),
            ),
          ],
        ),
      ),
    );
  }
}
