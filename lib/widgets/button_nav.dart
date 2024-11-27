import 'package:flutter/material.dart';
import 'package:routes3/consts/routes.dart';

class ButtonNav extends StatefulWidget {
  const ButtonNav({super.key});

  @override
  State<ButtonNav> createState() => _ButtonNavState();
}

class _ButtonNavState extends State<ButtonNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.spaslhPage0);
            },
            child: const Text('Kembali ke Splash Screen')),
        const SizedBox(
          height: 20,
        ),
        TextButton.icon(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.mainPage0,
                  arguments: {"index6": 0});
            },
            icon: const Icon(Icons.home),
            label: const Text("HOME (BOTTOM NAVBAR)")),
        TextButton.icon(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.mainPage0,
                  arguments: {"index6": 1});
            },
            icon: const Icon(Icons.person),
            label: const Text("PERSON (BOTTOM NAVBAR)")),
        TextButton.icon(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.mainPage0,
                  arguments: {"index6": 2});
            },
            icon: const Icon(Icons.person),
            label: const Text("SETTING (BOTTOM NAVBAR)")),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
