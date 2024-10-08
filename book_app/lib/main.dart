import 'package:book_app/Constatnt.dart';
import 'package:book_app/Features/Home/Domain/Entities/book_Entity.dart';
import 'package:book_app/Features/Splash/presentation/views/Splash_View.dart';
import 'package:book_app/core/Utiles/App_Router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const BookApp());
  Hive.registerAdapter(BookEntityAdapter());
  Hive.openBox(KFeaturedBox);
  Hive.openBox(KNewestBooks);//اسم لبوكس KNewestbox
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        scaffoldBackgroundColor: KPrimaryColor,
      ),
      //  : const SplashView(),
    );
  }
}
