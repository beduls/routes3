import 'package:flutter/material.dart';
import 'package:routes3/pages/home_pages.dart';
import 'package:routes3/pages/profile_pages.dart';
import 'package:routes3/pages/setting_pages.dart';

class ButtonPush extends StatefulWidget {
  const ButtonPush({super.key});

  @override
  State<ButtonPush> createState() => _ButtonPushState();
}

class _ButtonPushState extends State<ButtonPush> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton.icon(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePages()));
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
    );
  }
}
