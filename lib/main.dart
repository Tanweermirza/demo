import 'package:demo1/Controller/Binding.dart';
import 'package:demo1/Screen/FirstScreen1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialBinding: AuthBinding(),
    home: const FirstScreen1(),
  ));
}
