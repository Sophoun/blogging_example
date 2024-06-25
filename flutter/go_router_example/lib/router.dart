import 'package:go_router/go_router.dart';
import 'package:go_router_example/category_page.dart';
import 'package:go_router_example/dashboard_page.dart';
import 'package:go_router_example/home_page.dart';
import 'package:go_router_example/login_page.dart';

final goRouter = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    ShellRoute(
      builder: (context, state, child) => HomePage(child: child),
      routes: [
        GoRoute(
          path: "/dashboard",
          builder: (context, state) => const DashboardPage(),
        ),
        GoRoute(
          path: "/category",
          builder: (context, state) => const CategoryPage(),
        ),
      ],
    ),
  ],
);
