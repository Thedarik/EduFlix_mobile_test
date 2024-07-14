import 'package:eduflix_mobile_test/src/feature/certificate/view/pages/certificate_page.dart';
import 'package:eduflix_mobile_test/src/feature/course/view/pages/course_page.dart';
import 'package:eduflix_mobile_test/src/feature/home/view/pages/homa_page.dart';
import 'package:eduflix_mobile_test/src/feature/home/view/pages/profile_page.dart';
import 'package:eduflix_mobile_test/src/feature/learning/view/pages/learning_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  List<Widget> lits = [
    const HomaPage(),
    CoursePage(),
    const LearningPage(),
    const CertificatePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: lits[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          index = value;
          setState(() {});
        },
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: index == 0 ? SvgPicture.asset("assets/icons/home.svg") : SvgPicture.asset("assets/icons/default_home.svg"),
              label: index != 0 ? "Home" : "."),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/course.svg"),
            label: "Course",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/learing.svg"),
            label: "Learning",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/bokk.svg"),
            label: "Certificate",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/profile.svg"),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
