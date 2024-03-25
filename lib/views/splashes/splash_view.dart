import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salam/core/colors.dart';
import 'package:salam/core/images.dart';
import 'package:salam/views/splashes/get_started_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    // hide the status bar and navgation bar by setting the mode to immersive
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const GetStartedView()));
    });
  }

  @override
  void dispose() {
    // show the status bar and navgation bar after pushing to home screen and returing to standred mode
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          SvgPicture.asset(AppImages.bird),
          const SizedBox(
            height: 230,
          ),
          Center(
            child: SvgPicture.asset(AppImages.hand),
          ),
          const SizedBox(
            height: 170,
          ),
          const Text(
            'سَلام',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'نَحنُ قَريبون لِهَذِهِ الدَّرَجَه',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
