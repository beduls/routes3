import 'package:flutter/material.dart';
import 'package:routes3/consts/routes.dart';
import 'package:routes3/pages/main_pages.dart';
import 'package:routes3/pages/profile_pages.dart';
import 'package:routes3/pages/setting_pages.dart';
import 'package:routes3/pages/splash_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const SplashPages(),
      initialRoute: AppRoutes.spaslhPage0,
      routes: {
        AppRoutes.spaslhPage0: (context) => const SplashPages(),
        AppRoutes.mainPage0: (context) => const MainPages(),
        AppRoutes.profilePage0: (context) => const ProfilePages(),
        AppRoutes.settingPage0: (context) => const SettingPages(),
      },
    );
  }
}
