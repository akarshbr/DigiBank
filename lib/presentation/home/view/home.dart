import 'package:digibank/global_widget/global_appbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: GlobalAppBar(
        title: 'Welcome',
        centertitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon: Icon(Icons.logout_outlined)),
          SizedBox(width: 10,)
        ],
      ),
    ));
  }
}
