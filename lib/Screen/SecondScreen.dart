import 'dart:developer';

import 'package:demo1/Controller/authController.dart';
import 'package:demo1/Screen/ThirdScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Constant/constant.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController mobileCtrl = TextEditingController();
  // List numberlist = ["+91", '+93', "+94"];
  // String? number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading:
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("You'll receive a 4 digit code"),
                Text("to verify next"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  width: 350,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/india 2.png',
                        width: 40,
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
                          controller: mobileCtrl,
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
                  onTap: () {
                    // Get.to(ThirdScreen());
                    // authController.sentOtp("+91" + mobileCtrl.text);
                    authController.sentOtp("+91" + mobileCtrl.text);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 120),
                    // width: 00,
                    height: 50,
                    decoration: BoxDecoration(
                      color: buttonColor,
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
            ),
          ),
          // Expanded(
          //     child: Stack(
          //   children: [
          //     Positioned(
          //         bottom: 10, child: Image.asset("assets/images/Vector4.png")),
          //     Positioned(
          //         bottom: 0, child: Image.asset("assets/images/Vector3.png")),
          //   ],
          // )),
          // Container(
          //   color: Colors.black,
          //   height: 100,
          //   width: double.infinity,
          // )
        ],
      ),
    );
  }

  sentOtp(String mobile) {
    try {
      auth.verifyPhoneNumber(
          phoneNumber: mobile,
          verificationCompleted: (PhoneAuthCredential credential) {
            log("VErification complete");
            Get.snackbar("Success", "Your number is Verified.");
          },
          verificationFailed: (FirebaseAuthException exception) {},
          codeSent: (String id, int? value) {
            log("Code sent");
            Get.snackbar("Success", "Code sent to number.");
            Get.to(ThirdScreen(
              mobile: mobile,
              id: id,
            ));
          },
          codeAutoRetrievalTimeout: (String timeout) {});
    } on FirebaseAuthException catch (error) {
      log(error.toString());
      Get.snackbar("Error", error.message.toString());
    } catch (e) {
      log(e.toString());
      Get.snackbar("Error", e.toString());
    }
  }
}

//  
