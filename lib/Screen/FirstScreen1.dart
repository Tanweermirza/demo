import 'package:demo1/Screen/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Constant/constant.dart';

class FirstScreen1 extends StatefulWidget {
  const FirstScreen1({super.key});

  @override
  State<FirstScreen1> createState() => _FirstScreen1State();
}

class _FirstScreen1State extends State<FirstScreen1> {
  List languageList = ["English", 'Hindi', "Spanish"];
  String? language;
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
                  const SizedBox(
                    height: 200,
                  ),
                  Center(
                    child: Image.asset('assets/images/image.png'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Text(
                      "Please Select your Language",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                      "You can change the language \n                  at any time"),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(border: Border.all()),
                    child: DropdownButton(
                      isExpanded: true,
                      underline: const SizedBox(),
                      hint: const Text(
                          'Select Language'), // Not necessary for Option 1
                      value: language,
                      onChanged: (newValue) {
                        setState(() {
                          language = newValue! as String?;
                        });
                      },
                      items: languageList.map((val) {
                        return DropdownMenuItem(
                          value: val,
                          child: Text(val),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const SecondScreen());
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      height: 50,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const Center(
                        child: Text(
                          'NEXT',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Positioned(
              bottom: 0, child: Image.asset("assets/images/Vector1.png")),
          Positioned(
              bottom: 0, child: Image.asset("assets/images/Vector2.png")),
        ],
      ),
    );
  }
}
