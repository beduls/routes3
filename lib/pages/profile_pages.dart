import 'package:flutter/material.dart';
import 'package:routes3/consts/routes.dart';
import 'package:routes3/pages/home_pages.dart';
import 'package:routes3/pages/setting_pages.dart';
import 'package:routes3/widgets/button_nav.dart';
import 'package:routes3/widgets/button_push.dart';

class ProfilePages extends StatefulWidget {
  const ProfilePages({super.key});

  @override
  State<ProfilePages> createState() => _ProfilePagesState();
}

class _ProfilePagesState extends State<ProfilePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Title'),
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
