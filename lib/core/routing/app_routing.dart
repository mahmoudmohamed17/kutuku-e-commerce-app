import 'package:e_commerce_app/features/main_page/ui/main_page.dart';
import 'package:go_router/go_router.dart';

class AppRouting {
  static final router = GoRouter(
    routes: [GoRoute(path: '/', builder: (context, state) => const MainPage())],
  );
}
