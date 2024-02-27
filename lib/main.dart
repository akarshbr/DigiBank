import 'package:digibank/presentation/login_screen/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'presentation/bottom_navigation/controller/bottom_nav_controller.dart';
import 'presentation/bottom_navigation/view/bottom_navigation.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.grey));
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => BottomNavigationController()),
    // ChangeNotifierProvider(
    //   create: (context) => ,
    // ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digi Bank',
      theme: /*isDark == true ? ThemeData.dark() : ThemeData.light()*/ThemeData.light(),
      home: LoginScreen(),
    );
  }
}
