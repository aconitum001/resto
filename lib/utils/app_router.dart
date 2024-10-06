import 'package:go_router/go_router.dart';
import 'package:resto/views/home_view.dart';

abstract class AppRouter {
  static const String homeView = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
