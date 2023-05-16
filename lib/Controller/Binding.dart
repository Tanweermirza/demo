import 'package:get/get.dart';

import 'authController.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<AuthController>(AuthController(), permanent: true);
  }
}
