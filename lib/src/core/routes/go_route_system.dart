import 'package:eduflix_mobile_test/src/core/routes/app_route_name.dart';
import 'package:eduflix_mobile_test/src/feature/auth/view/pages/onboarding_page.dart';
import 'package:eduflix_mobile_test/src/feature/certificate/view/pages/certificate_page.dart';
import 'package:eduflix_mobile_test/src/feature/course/view/pages/course_page.dart';
import 'package:eduflix_mobile_test/src/feature/learning/view/pages/learning_page.dart';
import 'package:go_router/go_router.dart';

final class GoRouterApp {
  static GoRouter router = GoRouter(initialLocation: AppRouteName.onBoardingPage, routes: [
    GoRoute(path: AppRouteName.coursePage, builder: (context, state) => CoursePage()),
    GoRoute(path: AppRouteName.onBoardingPage, builder: (context, state) => const OnboardingPage()),
    GoRoute(path: AppRouteName.learningPage, builder: (context, state) => const LearningPage()),
    GoRoute(path: AppRouteName.certificatePage, builder: (context, state) => const CertificatePage())
  ]);
}
