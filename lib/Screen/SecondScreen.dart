import 'package:demo1/Controller/authController.dart';
import 'package:flutter/material.dart';

import 'Constant/constant.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController mobileCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    "Please enter your mobile number",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text("You'll receive a 4 digit code"),
                const Text("to verify next"),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  width: 350,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/india 2.png',
                        width: 40,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "+91",
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: TextField(
                          controller: mobileCtrl,
                          decoration: const InputDecoration(
                              labelText: "Mobile Number",
                              border: InputBorder.none),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    authController.sentOtp("+91${mobileCtrl.text}");
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
                        'CONTINUE',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//  
