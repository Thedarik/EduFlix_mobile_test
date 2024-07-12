import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@immutable
sealed class AppImages {
  const AppImages._();

  /// SVG
  static final splashLogo = SvgPicture.asset(
    'assets/icons/eduflixLogo.svg',
    height: 321.h,
    width: 321.w,
    fit: BoxFit.cover,
  );

  static final appleShadow = SvgPicture.asset(
    'assets/icons/apple_shadow.svg',
    height: 98.27.h,
    width: 86.71.w,
    fit: BoxFit.cover,
  );

  static final laptop= SvgPicture.asset(
    'assets/icons/it_software.svg',
    height: 20.h,
    width: 20.w,
    fit: BoxFit.cover,
  );

  static final windows = SvgPicture.asset(
    'assets/icons/windows.svg',
    height: 94.45.h,
    width: 95.45.w,
    fit: BoxFit.cover,
  );

  static final starIcon = SvgPicture.asset(
    'assets/icons/star_icon.svg',
    height: 10.h,
    width: 10.w,
    fit: BoxFit.cover,
  );

  static final searchIcon = SvgPicture.asset(
    'assets/icons/search_icon.svg',
    height: 14.h,
    width: 14.w,
    fit: BoxFit.cover,
  );


  static final onBoardingLogo = SvgPicture.asset(
    'assets/icons/eduflixLogo.svg',
    height: 300.h,
    width: 300.w,
    fit: BoxFit.cover,
  );
  static final OnboardingIcon = SvgPicture.asset(
    'assets/icons/mdi_user.svg',
  );
  static final googleLogo = SvgPicture.asset(
    'assets/icons/google_logo.svg',
  );
  static final appleLogo = SvgPicture.asset(
    'assets/icons/google_logo.svg',
  );

  /// PNG
  static final authImage = Image.asset(
    'assets/images/educationLogo.png',
    height: 321,
    width: 321,
    fit: BoxFit.cover,
  );
}

extension Extension on Image {
  Image copyWith({
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) =>
      Image(
        image: image,
        width: width ?? this.width,
        height: height ?? this.height,
        fit: fit ?? this.fit,
        color: color ?? this.color,
      );
}
