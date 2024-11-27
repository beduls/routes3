import 'package:flutter/material.dart';
import 'package:routes3/consts/routes.dart';
import 'package:routes3/pages/main_pages.dart';

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
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.spaslhPage0);
                },
                child: const Text('Kembali ke Splash Screen')),
            const SizedBox(
              height: 10,
            ),
            TextButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPages()));
                  // Navigator.pushReplacementNamed(context, AppRoutes.mainPage0);
                },
                icon: const Icon(Icons.home),
                label: const Text("Kembali ke HOME")),
          ],
        ),
      ),
    );
  }
}
