import 'package:digibank/presentation/home/controller/home_controler.dart';
import 'package:digibank/presentation/profile/controller/profile_controller.dart';
import 'package:digibank/presentation/registration_screen/view/registration.dart';
import 'package:digibank/presentation/transaction/controller/transaction_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'presentation/bottom_navigation/controller/bottom_nav_controller.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.grey));
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => BottomNavigationController()),
    ChangeNotifierProvider(
      create: (context) => HomeController(),
    ),
    ChangeNotifierProvider(
      create: (context) => ProfileController(),
    ),
    ChangeNotifierProvider(
      create: (context) => TransactionController(),
    ),
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
    // var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digi Bank',
      theme: /*isDark == true ? ThemeData.dark() : ThemeData.light()*/
          ThemeData.light(),
      home: RegistrationScreen(),
    );
  }
}
