import 'package:flutter/material.dart';

class CustomElevationButton extends StatelessWidget {
  CustomElevationButton(
      {super.key, required this.pageController, required this.pageIndex});
  final PageController pageController;
  int pageIndex;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minimumSize: const Size(208, 58),
        backgroundColor: const Color(0xff87B8B5),
      ),
      onPressed: () {
        pageController.jumpToPage(++pageIndex);
      },
      child: const Text(
        'Get Started',
        style: TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: "Inter",
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
