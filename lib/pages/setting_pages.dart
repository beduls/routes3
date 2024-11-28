import 'package:flutter/material.dart';
import 'package:routes3/consts/routes.dart';
import 'package:routes3/pages/home_pages.dart';
import 'package:routes3/pages/main_pages.dart';
import 'package:routes3/pages/profile_pages.dart';
import 'package:routes3/widgets/button_nav.dart';
import 'package:routes3/widgets/button_push.dart';

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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: ButtonNav()),
          Center(child: ButtonPush()),
        ],
      ),
    );
  }
}
