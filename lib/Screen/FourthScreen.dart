import 'dart:developer';

import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});
  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  String? radioValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Text(
                      "Please select your profile ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.background,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(00)),
                      ),
                      child: Row(
                        children: [
                          Radio(
                            value: "shiper",
                            groupValue: radioValue,
                            onChanged: (value) {
                              setState(() {
                                radioValue = value.toString();
                              });
                            },
                          ),
                          Image.asset(
                            'assets/images/Group.png',
                            width: 40,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Shipper",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                  "Lorem ipsum dolor sit amet,\nconsectetur adipiscing"),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      )),

                  Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.background,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(00)),
                      ),
                      child: Row(
                        children: [
                          Radio(
                            value: "transponder",
                            groupValue: radioValue,
                            onChanged: (value) {
                              log(value.toString());
                              setState(() {
                                radioValue = value.toString();
                              });
                            },
                          ),
                          Image.asset(
                            'assets/images/Vector.png',
                            width: 40,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Transporter",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                  "Lorem ipsum dolor sit amet,\nconsectetur adipiscing"),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      )),

                  // Container(
                  //     child: Row(
                  //   children: [
                  //     Text(
                  //         "Loem ipsum dolor sit amet,\nconsectetur adipiscing"),
                  //   ],
                  // )),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 100),
                      // width: 00,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Center(
                        child: Text(
                          ' CONTINUE',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
