import 'dart:developer';
import 'package:demo1/Screen/FirstScreen1.dart';
import 'package:demo1/Screen/FourthScreen.dart';
import 'package:demo1/Screen/ThirdScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

AuthController authController = AuthController.instance;
FirebaseAuth auth = FirebaseAuth.instance;

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  @override
  void onInit() {
    super.onInit();
    appInit();
  }

  appInit() {
    Future.delayed(const Duration(milliseconds: 100), () {
      Get.to(const FirstScreen1());
    });
    // auth.userChanges().listen((User? user) {

    //   if (user == null) {
    //     print('User is currently signed out!');
    //   } else {
    //     print('User is signed in!');
    //   }
    // });
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
      Get.snackbar("Error", error.message.toString());
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  otpVerify(String otp, String id) async {
    try {
      PhoneAuthCredential credential =
          PhoneAuthProvider.credential(verificationId: id, smsCode: otp);
      await auth.signInWithCredential(credential).then((value) async {
        Get.to(const FourthScreen());
      });
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
