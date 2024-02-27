import 'package:digibank/global_widget/global_appbar.dart';
import 'package:digibank/global_widget/text_refactor.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: GlobalAppBar(
          title: 'Welcome',
          centerTitle: false,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: Icon(Icons.logout_outlined)),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Center(child: TextRefactor(text: "Home")),
      ),
    );
  }
}
