import 'package:go_router/go_router.dart';
import 'package:tasks/ui/pagers/language/language.dart';

import '../../ui/pagers/home/home_page.dart';

import '../../ui/pagers/splash/splash_page.dart';
import '../helper/pager.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: Pager.splash,
    routes: [
      GoRoute(path: Pager.splash, builder: (_, __) => const SplashPage()),
      GoRoute(path: Pager.language, builder: (_, __) => const LanguagePage()),
      GoRoute(path: Pager.home, builder: (_, __) => const HomePage()),
    ],
  );
}
