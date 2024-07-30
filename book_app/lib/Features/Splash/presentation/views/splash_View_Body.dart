import 'package:book_app/Constatnt.dart';
import 'package:book_app/Features/Home/data/presentation/views/home_view.dart';
import 'package:book_app/Features/Splash/presentation/views/Widgets/sliding_Animation.dart';
import 'package:book_app/core/Utiles/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontroller; //بياخد قيمتو ب initState
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigationtohomeview();
  }

  @override
  void dispose() {
    super.dispose();
    animationcontroller.dispose();
  }

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
          height: 20,
        ),
        SlidingAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationcontroller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(
            begin: const Offset(0, 5),
            end:
                Offset.zero) //كانت قيم محورية عملتها انيميت ز لان تايب انيميشون
        .animate(animationcontroller);
    animationcontroller.forward();
  }

  void navigationtohomeview() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const homeView(),
          transition: Transition.fadeIn, duration: kTransitionDuration);
    });
  }
}
