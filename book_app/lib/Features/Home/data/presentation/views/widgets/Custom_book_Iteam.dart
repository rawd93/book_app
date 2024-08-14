import 'package:book_app/core/Utiles/assets.dart';
import 'package:flutter/cupertino.dart';

class CustomeBookImage extends StatelessWidget {
  const CustomeBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            // height: MediaQuery.of(context).size.height * .25,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.testImage),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
