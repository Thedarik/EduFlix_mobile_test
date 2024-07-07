import 'package:eduflix_mobile_test/src/core/style/colors.dart';
import 'package:eduflix_mobile_test/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LineWidgets extends StatelessWidget {
  const LineWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 1.h,
          width: MediaQuery.of(context).size.width / 2.50.w,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.black,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Column(
          children: [
            Text(
              "or",
              style: const AppTextStyle().bodyMedium,
            ),
            SizedBox(height: 6.h),
          ],
        ),
        SizedBox(width: 8.w),
        SizedBox(
          height: 1.h,
          width: MediaQuery.of(context).size.width / 2.50.w,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.black,
            ),
          ),
        ),
      ],
    );
  }
}
