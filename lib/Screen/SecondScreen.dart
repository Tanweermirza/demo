import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // List numberlist = ["+91", '+93', "+94"];
  // String? number;
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
                  // Container(
                  //   child: Center(
                  //     child: Image.asset('assets/images/image.png'),
                  //   ),
                  // ),
                  SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Text(
                      "Please enter your mobile number",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                      "You'll receive a 4 digit code \n              to verify next"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/images/india 2.png',
                          width: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "+91",
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Mobile Number",
                                border: InputBorder.none),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 20),
                  //   margin: EdgeInsets.symmetric(horizontal: 100),
                  //   decoration: BoxDecoration(border: Border.all()),
                  //   child: DropdownButton(
                  //     isExpanded: true,
                  //     underline: SizedBox(),
                  //     hint: Text('mobile number'), // Not necessary for Option 1
                  //     value: number,
                  //     onChanged: (newValue) {
                  //       setState(() {
                  //         number = newValue! as String?;
                  //       });
                  //     },
                  //     items: numberlist.map((val) {
                  //       return DropdownMenuItem(
                  //         child: new Text(val),
                  //         value: val,
                  //       );
                  //     }).toList(),
                  //   ),
                  // ),
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
                          'CONTINUE',
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
              bottom: 0, child: Image.asset("assets/images/Vector4.png")),
          Positioned(
              bottom: 0, child: Image.asset("assets/images/Vector3.png")),
        ],
      ),
    );
  }
}
