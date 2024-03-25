import 'package:flutter/material.dart';

import 'package:salam/core/colors.dart';
import 'package:salam/views/auth/login_view.dart';
import 'package:salam/views/auth/sign_up_view.dart';
import 'package:salam/views/home/home_view.dart';
import 'package:salam/widgets/custom_primary_button.dart';

class GetStartedRegisterView extends StatelessWidget {
  const GetStartedRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.local_pharmacy_rounded,
              size: 80,
              color: AppColors.primaryColor,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Let's get started!",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Login to enjoy the features we’ve ",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.primaryColor,
                  fontFamily: 'inter',
                )),
            const Text("provided, and stay healthy!",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.primaryColor,
                  fontFamily: 'inter',
                )),
            const SizedBox(
              height: 60,
            ),
            CustomPrimaryButton(
              fontSize: 16,
              label: 'Guest',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeView()));
              },
              color: AppColors.primaryColor,
              borderRadius: 32,
              height: MediaQuery.of(context).size.height * 0.072,
              width: MediaQuery.of(context).size.width * 0.73,
              borderColor: AppColors.primaryColor,
              labelColor: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomPrimaryButton(
              fontSize: 16,
              label: 'Login',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginView()));
              },
              color: AppColors.primaryColor,
              borderRadius: 32,
              height: MediaQuery.of(context).size.height * 0.072,
              width: MediaQuery.of(context).size.width * 0.73,
              borderColor: AppColors.primaryColor,
              labelColor: Colors.white,
            ),
            const SizedBox(height: 10),
            CustomPrimaryButton(
              fontSize: 16,
              label: 'Sign Up',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpView()));
              },
              color: Colors.white,
              borderRadius: 32,
              height: MediaQuery.of(context).size.height * 0.072,
              width: MediaQuery.of(context).size.width * 0.73,
              borderColor: AppColors.primaryColor,
              labelColor: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
