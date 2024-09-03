import 'package:flutter/material.dart';
import 'package:s2_flutter_app/model/on_boarding_model.dart';
import 'package:s2_flutter_app/widget/custom_on_boarding.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<OnBoardingModel> pages = [
    OnBoardingModel(
      image: 'assets/images/Group (1).svg',
      title: 'Sell Houses',
      subTitel:
          'Sell houses easily with the help of Listenoryx and to make this line big I am writing more.',
    ),
    OnBoardingModel(
        image: 'assets/images/Group.svg',
        title: 'We Warn You',
        subTitel:
            'We warn you whether to put your money on certain companies or not because we care for you.'),
    OnBoardingModel(
        image: 'assets/images/7   BANK DEAL.svg',
        title: 'Broker Relationship',
        subTitel:
            'Our brokers are good, nice and friendly. We bet you, you feel happy after meeting your broker.'),
  ];

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
      itemCount: pages.length,
      itemBuilder: (context, index) => CustomOBoarding(
        onBoardingModel: pages[index],
        pageController: _pageController,
        pageIndex: _pageIndex,
      ),
    ));
  }
}
