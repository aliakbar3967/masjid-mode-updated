import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled3/controller/DBController.dart';
import 'package:untitled3/screen/AppIntroductionScreen.dart';
import 'package:untitled3/screen/ErrorScreen.dart';
import 'package:untitled3/screen/HelpScreen.dart';
import 'package:untitled3/screen/HomeScreen.dart';
import 'package:untitled3/screen/SettingsScreen.dart';
import 'package:untitled3/screen/SplashScreen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  bool? isAppIntroduction;

  Future<void> initialize() async {
    await DBController.reset();
    isAppIntroduction = await DBController.getIntroductionScreenStatus();
    setState(() {});
  }

  @override
  void initState() {
    initialize();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness == Brightness.dark
        ? Brightness.light
        : Brightness.dark;
    // Color systemNavigationBarColor =
    //     Theme.of(context).brightness == Brightness.dark
    //         ? Theme.of(context).cardColor
    //         : Colors.white;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: brightness,
        systemNavigationBarColor: Theme.of(context).bottomAppBarTheme.color,
        systemNavigationBarIconBrightness: brightness,
      ),
    );
    if (isAppIntroduction == true) {
      return AppIntroductionScreen();
    } else if (isAppIntroduction == false) {
      return HomeScreen();
    }
    return SplashScreen();
  }
}
