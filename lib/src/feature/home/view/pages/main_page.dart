import 'package:eduflix_mobile_test/src/feature/home/view/pages/certificate_page.dart';
import 'package:eduflix_mobile_test/src/feature/home/view/pages/course_page.dart';
import 'package:eduflix_mobile_test/src/feature/home/view/pages/homa_page.dart';
import 'package:eduflix_mobile_test/src/feature/home/view/pages/learning_page.dart';
import 'package:eduflix_mobile_test/src/feature/home/view/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  List<Widget> lits = const [
    HomaPage(),
    CoursePage(),
    LearningPage(),
    CertificatePage(),
    ProfilePage(),
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
              label: index != 0 ? "home" : "."),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        ],
      ),
    );
  }
}
