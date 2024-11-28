import 'package:flutter/material.dart';
import 'package:routes3/consts/routes.dart';

class ButtonNav extends StatefulWidget {
  const ButtonNav({super.key});

  @override
  State<ButtonNav> createState() => _ButtonNavState();
}

class _ButtonNavState extends State<ButtonNav> {
  var currentPage7 = 0;
  bool? _isBtnSplashDisabled;

  @override
  void initState() {
    _isBtnSplashDisabled = false;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // print('test ${ModalRoute.of(context)!.settings.arguments}');
    if (ModalRoute.of(context)!.settings.arguments != null) {
      final args4 =
          ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
      currentPage7 = args4['index6'];
      if (currentPage7 == 1) {
        _isBtnSplashDisabled = true;
      }
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              if (_isBtnSplashDisabled == false) {
                Navigator.pushReplacementNamed(context, AppRoutes.spaslhPage0);
              } else {
                null;
              }
            },
            child: Text(_isBtnSplashDisabled!
                ? 'Hold On..'
                : 'Kembali ke Splash Screen')),
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
