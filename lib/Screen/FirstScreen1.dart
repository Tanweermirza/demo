import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
                  SizedBox(
                    height: 300,
                  ),
                  Container(
                    child: Center(
                      child: Image.asset('assets/images/image.png'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Text(
                      "Please Select your Language",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                      "You can change the language \n                  at any time"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.symmetric(horizontal: 100),
                    decoration: BoxDecoration(border: Border.all()),
                    child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      hint:
                          Text('Select Language'), // Not necessary for Option 1
                      value: language,
                      onChanged: (newValue) {
                        setState(() {
                          language = newValue! as String?;
                        });
                      },
                      items: languageList.map((val) {
                        return DropdownMenuItem(
                          child: new Text(val),
                          value: val,
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                          'Submit',
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
