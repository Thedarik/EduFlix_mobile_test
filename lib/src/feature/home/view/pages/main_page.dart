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
        currentIndex: index,
        unselectedItemColor: const Color(0xFF666666),
        selectedItemColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: index == 0 ? SvgPicture.asset("assets/icons/home.svg") : SvgPicture.asset("assets/icons/default_home.svg"),
            label: index != 0 ? "Home" : ".",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: index == 1 ? SvgPicture.asset("assets/icons/selected_cours.svg") : SvgPicture.asset("assets/icons/course.svg"),
            label: index != 1 ? "Course" : ".",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: index == 2 ? SvgPicture.asset("assets/icons/selected+learning.svg") : SvgPicture.asset("assets/icons/learing.svg"),
            label: index != 2 ? "Learning" : ".",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: index == 3 ? SvgPicture.asset("assets/icons/selectedbook.svg") : SvgPicture.asset("assets/icons/bokk.svg"),
            label: index != 3 ? "Certificate" : ".",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: index == 4
                ? SvgPicture.asset("assets/icons/user.svg")
                : const Icon(
                    Icons.person,
                    color: Color(0xFF545454),
                  ),
            label: index != 4 ? "Profile" : ".",
          ),
        ],
      ),
    );
  }
}
