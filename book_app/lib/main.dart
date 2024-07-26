import 'package:book_app/Constatnt.dart';
import 'package:book_app/Features/Splash/presentation/views/Splash_View.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: KPrimaryColor,
      ),
      home:  const SplashView(),
    );
  }
}
