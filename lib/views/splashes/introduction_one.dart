import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salam/core/images.dart';

class IntrductionOneView extends StatelessWidget {
  const IntrductionOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Using Expanded to make the cover image fill the available space
          Expanded(
            child: Stack(
              children: [
                // Positioned to align the doge image in the middle of the cover image
                Positioned.fill(
                  child: SvgPicture.asset(
                    AppImages.cover,
                    fit: BoxFit.cover,
                  ),
                ),
                // Align the doge image in the center of the cover image
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AppImages.dog),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Rest of your UI
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
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'رحلة مليئة بالإشارات! ترجم لغتك بلغة القلوب،ن. ',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'inter',
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    ' مع تطبيقنا الذي يجسد الفرح والتواصل بكل إيما',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'inter',
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
