import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/core/static_data/static_data.dart';
import 'package:digibank/presentation/home/view/home.dart';
import 'package:digibank/presentation/profile/view/profile.dart';
import 'package:flutter/material.dart';
import '../core/constants/colors.dart';

class DrawerRefactored extends StatelessWidget {
  const DrawerRefactored({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // var icon = [];
    var head = ['App Settings','Help and Support','Locate Branch','Rate Us','Legal & About'];
    // var subhead = [];
    var size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width * .7,
      backgroundColor: ColorTheme.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 2, right: 2),
            child: Container(
              width: size.width * .85,
              height: size.height * .091,
              // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: ColorTheme.darkClr,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      StaticData.username,
                      style: GLTextStyles.titleWhite,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
                      },
                      child: Text(
                        'View Profile',
                        style: GLTextStyles.bodyTextwhite,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(itemCount: head.length,
              itemBuilder: (context, index) => ListTile(
                // leading: icon[index],
                title: Text(head[index],style: GLTextStyles.labeltxtBlk,),
                // subtitle: Text(subhead[index],style: GLTextStyles.subtitleBlk,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
