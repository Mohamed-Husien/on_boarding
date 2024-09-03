import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController(
    //controoller to jumping between  color
    initialPage: 0,
  );
  int pageIndex = 0;

  List<Color> pagesColor = [
    Colors.red,
    Colors.white,
    Colors.black,
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pagesColor.length,
        itemBuilder: (context, index) => Container(
          color: pagesColor[index],
        ),
        controller: _pageController, //here i used controller
        onPageChanged: (value) {
          setState(() {
            pageIndex = value;
          });
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              if (pageIndex == 0) {
                _pageController.jumpToPage(pagesColor.length - 1);
              } else {
                _pageController.jumpToPage(--pageIndex);
              }
            },
            child: const Icon(Icons.arrow_back),
          ),
          FloatingActionButton(
            onPressed: () {
              if (pageIndex == pagesColor.length - 1) {
                _pageController.jumpToPage(0);
              } else {
                _pageController.jumpToPage(++pageIndex);
              }
            },
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
