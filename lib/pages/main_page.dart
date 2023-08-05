import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:my_resto/data/food_data.dart';
import 'package:my_resto/pages/profile_page.dart';

import 'cart_page.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List pages = [
      HomePage(),
      CartPage(),
      ProfilePage(),
    ];

    return Scaffold(
      // appBar: AppBar(
      //   leadingWidth: 48,
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 20),
      //     child: Image.asset(
      //       'assets/icon/app_icon.png',
      //       width: 56,
      //     ),
      //   ),
      //   title: const Text('Lapakwibu'),
      // ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trolley),
            label: "Keranjang",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (i) {
          _currentIndex = i;
          setState(() {});
        },
      ),
    );
  }
}

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            height: 180.0,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: banners
              .map(
                (e) => Container(
                  // width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      e,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 10.0,
          child: DotsIndicator(
            dotsCount: banners.length,
            position: currentIndex,
          ),
        ),
      ],
    );
  }
}
