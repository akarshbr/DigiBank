import 'package:digibank/global_widget/text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../global_widget/text_refactor.dart';



class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: size.height * .1,
                  width: size.width * .8,
                  child: Card(
                    color: Color(0xffF4F4F4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          size: 30,
                        ),
                        Text(
                          "Transfer to Bank",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height:size.height*9,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                top: 10,
                                                bottom: 10),
                                            child: TextFormFieldRefactor(
                                              hintText: 'Enter Account Number',
                                            )
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                top: 10,
                                                bottom: 10),
                                            child: TextFormFieldRefactor(
                                              hintText: 'Re-enter Account Number',
                                            )
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                top: 10,
                                                bottom: 10),
                                            child: TextFormFieldRefactor(
                                              hintText: 'Enter IFSC',
                                            )
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                top: 10,
                                                bottom: 10),
                                            child: TextFormFieldRefactor(
                                              hintText: "Bank Account Holder's Name",
                                            )
                                          ),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child:
                                                  TextRefactor(text: "Confirm")),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: size.height * .1,
                width: size.width * .8,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.phone_iphone_rounded,
                        size: 25,
                      ),
                      Text(
                        "Pay to Phone Number",
                        style: TextStyle(fontSize: 15),
                      ),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 200,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const <Widget>[
                                        Text('GeeksforGeeks'),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ))
                    ],
                  ),
                  color: Color(0xffF4F4F4),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
