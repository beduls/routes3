import 'package:flutter/material.dart';
import 'package:routes3/consts/routes.dart';
import 'package:routes3/pages/profile_pages.dart';
import 'package:routes3/pages/setting_pages.dart';
import 'package:routes3/widgets/button_nav.dart';
import 'package:routes3/widgets/button_push.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Title'),
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
