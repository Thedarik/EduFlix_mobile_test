import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: const Text(
          "Hai, Mau Belajar Apa Hari Ini?",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 27),
            child: IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 28.h,
                width: 28.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xFF262626),
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/mdi_user.svg",
                    width: 16.w,
                    height: 16.h,
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, right: 27),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF1D1D1D),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 28,
                        height: 28,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xFF303030),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/ocloc.svg"),
                          ),
                        ),
                      ),
                      SvgPicture.asset("assets/icons/censel.svg"),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.close, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 131,
              width: double.infinity, // Balandlikni o'rnating
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35, right: 33),
                    child: SizedBox(
                      height: 131,
                      width: 362,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF1A1A1A),
                        ),
                        child: Image.asset("assets/icons/741b1a98-9274-42cc-953a-e7d7337becc5.txt"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, right: 33),
                    child: SizedBox(
                      height: 131,
                      width: 362,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF1A1A1A),
                        ),
                        child: Image.asset("assets/icons/741b1a98-9274-42cc-953a-e7d7337becc5.txt"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            const Padding(
              padding: EdgeInsets.only(left: 17),
              child: SizedBox(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "The Masters",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 9),
            SizedBox(
              height: 110,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: SizedBox(
                      width: 82,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 82,
                            width: 82,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: SvgPicture.asset("assets/icons/userprofil.svg"),
                            ),
                          ),
                          Text(
                            "Asadbek",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 19),
            Padding(
              padding: EdgeInsets.only(left: 3, right: 10),
              child: SizedBox(
                height: 79,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1D1D1D),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 61,
                        width: 61,
                        child: Image.asset("assets/icons/nimadur2.png"),
                      ),
                      const Text(
                        "Yuk, ikuti Tes Passion \nDapatkan saran dan rekomendasi belajar",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      const Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 27,
                  mainAxisSpacing: 16,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 199.h,
                    width: 200.w,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SvgPicture.asset("assets/icons/tanlovlar.svg"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
