import 'package:eduflix_mobile_test/src/core/style/colors.dart';
import 'package:eduflix_mobile_test/src/core/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RegButton extends StatelessWidget {
  final String text;
  final String icon;

  const RegButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      width: double.maxFinite.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          color: AppColors.c343A45,
        ),
        child: CupertinoButton(
          padding: const EdgeInsets.only(bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
              SizedBox(width: 8.w),
              Text(
                text,
                style: const AppTextStyle().bodyLarge,
              ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
