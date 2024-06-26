import 'package:flutter/material.dart';
import 'package:go_router_example/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      routerConfig: goRouter,
    );
  }
}
