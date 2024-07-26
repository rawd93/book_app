import 'package:book_app/core/Utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            AssetsData.logo,
            height: 100,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Read Free BOOKS',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
