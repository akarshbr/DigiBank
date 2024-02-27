import 'package:flutter/material.dart';

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
                                  height: 800,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
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
                                          child:
                                          TextField(
                                            decoration: InputDecoration(
                                                hintText:
                                                    'Enter Account Number',
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: .13,
                                                        color:
                                                            Colors.white54))),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 10,
                                              bottom: 10),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText:
                                                'Re-enter Account Number',
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: .13,
                                                        color:
                                                        Colors.white54))),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 10,
                                              bottom: 10),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText:
                                                'Enter IFSC Code',
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: .13,
                                                        color:
                                                        Colors.white54))),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 10,
                                              bottom: 10),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText:
                                                'Account Holder Name',
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: .13,
                                                        color:
                                                        Colors.white54))),
                                          ),
                                        ),

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
