import 'package:flutter/material.dart';
import 'package:s2_flutter_app/widget/custom_on_boarding.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _pageIndex = 0;
  final PageController _pageController = PageController(
    //controoller to jumping between  color
    initialPage: 0,
  );
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      controller: _pageController,
      onPageChanged: (value) {
        setState(() {
          _pageIndex = value;
        });
      },
      itemCount: 3,
      itemBuilder: (context, index) => CustomOBoarding(
        pageController: _pageController,
        pageIndex: _pageIndex,
      ),
    ));
  }
}
