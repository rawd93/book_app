import 'package:book_app/Constatnt.dart';
import 'package:flutter/cupertino.dart';

abstract class Styles {
  // static const titleMedium = TextStyle(
  //   fontSize: 20,
  //   fontWeight: FontWeight.w600,
  // );
  static const textStyle18 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, fontFamily: kAmiriBold);
  //نفسه semiBold
  static const textStyle20 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.normal //نفسها ريغيورال
          );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
  );

  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
