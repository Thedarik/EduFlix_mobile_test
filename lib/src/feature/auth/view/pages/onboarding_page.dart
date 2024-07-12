import 'package:eduflix_mobile_test/src/core/style/colors.dart';
import 'package:eduflix_mobile_test/src/core/style/images.dart';
import 'package:eduflix_mobile_test/src/core/style/text_style.dart';
import 'package:eduflix_mobile_test/src/feature/auth/view/pages/sign_up_page.dart';
import 'package:eduflix_mobile_test/src/feature/auth/view/widgets/c_w_ga.dart';
import 'package:eduflix_mobile_test/src/feature/auth/view/widgets/line_widgets.dart';
import 'package:eduflix_mobile_test/src/feature/home/view/pages/homa_page.dart';
import 'package:eduflix_mobile_test/src/feature/home/view/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            SizedBox(height: 57.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 54.h),
              child: AppImages.onBoardingLogo,
            ),
            Text(
              "Welcome to Eduflix!",
              style: const AppTextStyle().bodySmall,
            ),
            SizedBox(height: 46.h),
            SizedBox(
              height: 60.h,
              width: double.maxFinite.w,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.c00C2CB,
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppImages.OnboardingIcon,
                      SizedBox(width: 8.w),
                      Text(
                        "Sign up with email",
                        style: const AppTextStyle().bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 34.h),
            const LineWidgets(),
            SizedBox(height: 14.h),
            const RegButton(
              text: 'Continue with Google',
              icon: 'assets/icons/google_logo.svg',
            ),
            SizedBox(height: 24.h),
            const RegButton(
              text: 'Continue with Apple',
              icon: 'assets/icons/apple_logo.svg',
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                SizedBox(width: 4.w),
                Text(
                  "Already registered?",
                  style: const AppTextStyle().authDisplayLarge,
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Text(
                    "Log In",
                    style: const AppTextStyle().authDisplayMedium,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
