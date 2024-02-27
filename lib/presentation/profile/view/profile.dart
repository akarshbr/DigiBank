import 'package:digibank/global_widget/text_refactor.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TextRefactor(text: 'Profile')),
    );
  }
}
