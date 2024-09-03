import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:s2_flutter_app/widget/custom_elevation_button.dart';

class CustomOBoarding extends StatelessWidget {
  CustomOBoarding(
      {super.key, required this.pageIndex, required this.pageController});
  int pageIndex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 76, right: 40, left: 40, bottom: 72),
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/images/Listenoryx.jpg'),
            const SizedBox(
              height: 64,
            ),
            SvgPicture.asset('assets/images/Group (1).svg'),
            // const SizedBox(
            //   height: 64,
            // ),
            const Text(
              'Sell Houses',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Inter",
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Sell houses easily with the help of Listenoryx and to make this line big I am writing more.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
                fontSize: 17,
                color: Color(0xffA6A6A6),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (dotIndex) => AnimatedContainer(
                  margin: const EdgeInsets.all(4),
                  alignment: Alignment.center,
                  width: 15,
                  height: 15,
                  duration: const Duration(),
                  decoration: BoxDecoration(
                    color: dotIndex == pageIndex
                        ? const Color(0xff87B8B5)
                        : const Color(0xffADD2CF),
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '\$',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            CustomElevationButton(
              pageController: pageController,
              pageIndex: pageIndex,
            ),
          ],
        ),
      ),
    );
  }
}
