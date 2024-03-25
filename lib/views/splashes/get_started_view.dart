import 'package:flutter/material.dart';
import 'package:salam/core/colors.dart';
import 'package:salam/views/splashes/get_started_register_view.dart';
import 'package:salam/views/splashes/intrduction_two.dart';
import 'package:salam/views/splashes/introduction_one.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GetStartedView extends StatefulWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  GetStartedViewState createState() => GetStartedViewState();
}

class GetStartedViewState extends State<GetStartedView> {
  final controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: controller,
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
              children: const [
                IntrductionOneView(),
                IntroductionTwoView(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 2,
            effect: const WormEffect(
              activeDotColor: AppColors.primaryColor,
              dotColor: Color(0xffF0F0F0),
              dotHeight: 8,
              dotWidth: 8,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 58,
            width: 305,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColors.primaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                if (currentPage < 1) {
                  // Navigate to the next page
                  controller.animateToPage(
                    currentPage + 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const GetStartedRegisterView()));
                }
              },
              child: const Text(
                'التالي',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
