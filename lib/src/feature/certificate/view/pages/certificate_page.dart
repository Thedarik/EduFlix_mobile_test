import 'package:eduflix_mobile_test/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';

class CertificatePage extends StatelessWidget {
  final AppTextStyle appTextStyle = const AppTextStyle();
  const CertificatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: Text(
          "Learning",
          style: appTextStyle.labelMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.h,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 34.h,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                      ),

                      suffixIcon: IconButton(
                          onPressed: (){},
                          icon: AppImages.searchIcon
                      ),

                      hintText: "Cari Certificate",
                      hintStyle: appTextStyle.labelLarge,
                      filled: true,
                      fillColor: AppColors.c1D1D1D
                  ),
                ),
              ),
            ),

            SizedBox(height: 15.h,),

            SizedBox(
              height: 30.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.w),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index)=> SizedBox(
                      width: 70.w,
                      height: 25.h,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          // color: AppColors.cD9D9D9,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.c717171
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "IT software",
                            style: appTextStyle.headlineSmall,
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index)=> SizedBox(width: 18.w,),
                    itemCount: 5
                ),
              ),
            ),

            SizedBox(height: 20.h,),

            SizedBox(
              height: 200.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      height: 200.h,
                      width: 200.w,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 125.h,
                              width: 200.w,
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)
                                  ),
                                  color: AppColors.white,
                                ),
                                child: Row(
                                  children: [

                                    Column(
                                      children: [
                                        SizedBox(height: 5.h,),

                                        Padding(
                                          padding: const EdgeInsets.only(right: 35),
                                          child: Text(
                                            "EduFlix",
                                            style: appTextStyle.headlineSmall?.copyWith(
                                                color: AppColors.black,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 7.sp
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(right: 20),
                                          child: Text(
                                            "7 MEI 2023",
                                            style: appTextStyle.profileHeadlineSmall?.copyWith(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.black
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(left: 4.w),
                                          child: Text(
                                            "INTRODUCTION TO \n        MICROSOFT",
                                            style: appTextStyle.displayLarge?.copyWith(
                                                color: AppColors.black,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),

                                        SizedBox(height: 10.h,),

                                        Padding(
                                          padding: EdgeInsets.only(right: 30.w),
                                          child: Text(
                                            "Rp.500.000",
                                            style: appTextStyle.profileHeadlineLarge?.copyWith(
                                                color: AppColors.cF1511B,
                                                fontSize: 11.sp
                                            ),
                                          ),
                                        ),

                                        SizedBox(height: 10.h,),

                                        Padding(
                                          padding: EdgeInsets.only(right: 48.w),
                                          child: Text(
                                            "Bill Gates",
                                            style: appTextStyle.profileBodyLarge?.copyWith(
                                                fontSize: FontSize.size7,
                                                color: Colors.black
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(right: 40.w),
                                          child: Text(
                                            "Founder Microsoft",
                                            style: appTextStyle.titleLarge?.copyWith(
                                                fontSize: FontSize.size5,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.black
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: SizedBox(
                                              height: 96.h,
                                              width: 96.w,
                                              child: AppImages.windows
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 47, left: 10),
                                          child: SizedBox(
                                            height: 95.h,
                                            width: 85.w,
                                            child: const DecoratedBox(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage("assets/images/bill_gates.png"),
                                                      fit: BoxFit.cover
                                                  )
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )

                                  ],
                                ),
                              )
                          ),


                          SizedBox(
                            height: 75.h,
                            width: 205.w,
                            child: DecoratedBox(
                              decoration: const BoxDecoration(
                                  color: AppColors.c1A1C1E,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 5.h,),

                                  Text(
                                    "Introduction to Microsoft",
                                    style: appTextStyle.titleMedium?.copyWith(
                                        color: AppColors.white
                                    ),
                                  ),

                                  SizedBox(height: 20.h,),

                                  Row(
                                    children: [
                                      SizedBox(width: 15.w,),

                                      Text(
                                        "Bill Gates",
                                        style: appTextStyle.headlineMedium,
                                      ),

                                      SizedBox(width: 55.w,),

                                      Text(
                                        "5",
                                        style: appTextStyle.headlineSmall?.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        ),
                                      ),

                                      SizedBox(width: 5.w,),

                                      SizedBox(
                                        height: 10.h,
                                        width: 10.w,
                                        child: AppImages.starIcon,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                        width: 10.w,
                                        child: AppImages.starIcon,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                        width: 10.w,
                                        child: AppImages.starIcon,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                        width: 10.w,
                                        child: AppImages.starIcon,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                        width: 10.w,
                                        child: AppImages.starIcon,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                    ),

                    SizedBox(
                      width: 5.w,
                    ),

                    SizedBox(
                      height: 200.h,
                      width: 200.w,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 125.h,
                              width: 200.w,
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)
                                  ),
                                  color: AppColors.white,
                                ),
                                child: Row(
                                  children: [

                                    Column(
                                      children: [
                                        SizedBox(height: 5.h,),

                                        Padding(
                                          padding: const EdgeInsets.only(right: 35),
                                          child: Text(
                                            "EduFlix",
                                            style: appTextStyle.headlineSmall?.copyWith(
                                                color: AppColors.black,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 7.sp
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(right: 20),
                                          child: Text(
                                            "7 MEI 2023",
                                            style: appTextStyle.profileHeadlineSmall?.copyWith(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.black
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(left: 4.w),
                                          child: Text(
                                            "INTRODUCTION TO \n        MICROSOFT",
                                            style: appTextStyle.displayLarge?.copyWith(
                                                color: AppColors.black,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),

                                        SizedBox(height: 10.h,),

                                        Padding(
                                          padding: EdgeInsets.only(right: 30.w),
                                          child: Text(
                                            "Rp.500.000",
                                            style: appTextStyle.profileHeadlineLarge?.copyWith(
                                                color: AppColors.cF1511B,
                                                fontSize: 11.sp
                                            ),
                                          ),
                                        ),

                                        SizedBox(height: 10.h,),

                                        Padding(
                                          padding: EdgeInsets.only(right: 48.w),
                                          child: Text(
                                            "Bill Gates",
                                            style: appTextStyle.profileBodyLarge?.copyWith(
                                                fontSize: FontSize.size7,
                                                color: Colors.black
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(right: 40.w),
                                          child: Text(
                                            "Founder Microsoft",
                                            style: appTextStyle.titleLarge?.copyWith(
                                                fontSize: FontSize.size5,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.black
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: SizedBox(
                                              height: 96.h,
                                              width: 96.w,
                                              child: AppImages.windows
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 47, left: 10),
                                          child: SizedBox(
                                            height: 95.h,
                                            width: 85.w,
                                            child: const DecoratedBox(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage("assets/images/bill_gates.png"),
                                                      fit: BoxFit.cover
                                                  )
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )

                                  ],
                                ),
                              )
                          ),


                          SizedBox(
                            height: 75.h,
                            width: 205.w,
                            child: DecoratedBox(
                              decoration: const BoxDecoration(
                                  color: AppColors.c1A1C1E,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 5.h,),

                                  Text(
                                    "Introduction to Microsoft",
                                    style: appTextStyle.titleMedium?.copyWith(
                                        color: AppColors.white
                                    ),
                                  ),

                                  SizedBox(height: 20.h,),

                                  Row(
                                    children: [
                                      SizedBox(width: 15.w,),

                                      Text(
                                        "Bill Gates",
                                        style: appTextStyle.headlineMedium,
                                      ),

                                      SizedBox(width: 55.w,),

                                      Text(
                                        "5",
                                        style: appTextStyle.headlineSmall?.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        ),
                                      ),

                                      SizedBox(width: 5.w,),

                                      SizedBox(
                                        height: 10.h,
                                        width: 10.w,
                                        child: AppImages.starIcon,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                        width: 10.w,
                                        child: AppImages.starIcon,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                        width: 10.w,
                                        child: AppImages.starIcon,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                        width: 10.w,
                                        child: AppImages.starIcon,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                        width: 10.w,
                                        child: AppImages.starIcon,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
