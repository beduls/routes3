import 'package:flutter/material.dart';
import 'package:routes3/pages/home_pages.dart';
import 'package:routes3/pages/profile_pages.dart';
import 'package:routes3/pages/setting_pages.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  var currentTab5 = 0;

  @override
  void didChangeDependencies() {
    // print('test ${ModalRoute.of(context)!.settings.arguments}');

    if (ModalRoute.of(context)!.settings.arguments != null) {
      final args4 =
          ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
      currentTab5 = args4['index6'];
      // print(currentTab5);
    }

    // final args4 = ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomePages(),
        const ProfilePages(),
        const SettingPages(),
      ][currentTab5],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTab5,
          onTap: (value7) => setState(() {
                currentTab5 = value7;
              }),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "PROFILE"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "SETTING"),
          ]),
    );
  }
}
