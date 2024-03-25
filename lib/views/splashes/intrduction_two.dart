import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salam/core/images.dart';

class IntroductionTwoView extends StatelessWidget {
  const IntroductionTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SvgPicture.asset(AppImages.dog),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'أهلا في سَلام',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'يمكنك من خلال سلام تحويل الكتابه او ',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  'التسجيل الصوتي الي لغة الاشارة بأستخدام اللغه العربية',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )
              ],
            ),
          ],
        )
      ],
    ));
  }
}
