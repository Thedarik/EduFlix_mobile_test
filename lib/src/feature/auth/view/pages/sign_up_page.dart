import 'package:eduflix_mobile_test/src/core/style/colors.dart';
import 'package:eduflix_mobile_test/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Create Account", style: const AppTextStyle().authTitleSmall),
            SizedBox(height: 46.h),
            Text("Name", style: const AppTextStyle().bodyMedium),
            const SizedBox(
              height: 38,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10),
                  border: UnderlineInputBorder(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
