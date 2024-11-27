import 'package:flutter/material.dart';
import 'package:routes3/consts/routes.dart';
import 'package:routes3/pages/home_pages.dart';
import 'package:routes3/pages/main_pages.dart';
import 'package:routes3/pages/profile_pages.dart';

class SettingPages extends StatefulWidget {
  const SettingPages({super.key});

  @override
  State<SettingPages> createState() => _SettingPagesState();
}

class _SettingPagesState extends State<SettingPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.spaslhPage0);
                    },
                    child: const Text('Kembali ke Splash Screen')),
                const SizedBox(
                  height: 20,
                ),
                TextButton.icon(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.mainPage0,
                          arguments: {"index6": 0});
                    },
                    icon: const Icon(Icons.home),
                    label: const Text("HOME (BOTTOM NAVBAR)")),
                TextButton.icon(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.mainPage0,
                          arguments: {"index6": 1});
                    },
                    icon: const Icon(Icons.person),
                    label: const Text("PERSON (BOTTOM NAVBAR)")),
                TextButton.icon(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.mainPage0,
                          arguments: {"index6": 2});
                    },
                    icon: const Icon(Icons.person),
                    label: const Text("SETTING (BOTTOM NAVBAR)")),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePages()));
                        // Navigator.pushReplacementNamed(context, AppRoutes.mainPage0);
                      },
                      icon: const Icon(Icons.home),
                      label: const Text("HOME")),
                  TextButton.icon(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePages()));
                      },
                      icon: const Icon(Icons.person),
                      label: const Text("PROFILE")),
                  TextButton.icon(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingPages()));
                      },
                      icon: const Icon(Icons.settings),
                      label: const Text("SETTING")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
