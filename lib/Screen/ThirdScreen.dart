import 'package:demo1/Controller/authController.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'Constant/constant.dart';

class ThirdScreen extends StatefulWidget {
  final String mobile;
  final String id;
  const ThirdScreen({super.key, required this.mobile, required this.id});
  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  String otp = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Text(
                      "Verify Phone",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text("Code is sent to ${widget.mobile}"),
                  SizedBox(
                    height: 20,
                  ),
                  OtpTextField(
                    numberOfFields: 6,
                    borderColor: Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      setState(() {
                        otp = verificationCode;
                      });

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Didn't receive the code? ",
                      style:
                          const TextStyle(color: Colors.black, fontSize: 12.0),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Request Again',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => {authController.sentOtp(widget.mobile)},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  InkWell(
                    onTap: () {
                      // Get.to(FourthScreen());
                      // authController.otpVerify(otp, widget.id);
                      AuthController.instance.otpVerify(otp, widget.id);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      // width: 00,
                      height: 50,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Center(
                        child: Text(
                          'VERIFY AND CONTINUE',
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
