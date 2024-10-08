import 'package:book_app/Constatnt.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/Book%20_Rating.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/Custom_book_Iteam.dart';
import 'package:book_app/core/Utiles/styles.dart';
import 'package:flutter/cupertino.dart';

class BookDeatiesSection extends StatelessWidget {
  const BookDeatiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width; //عرض شاشة

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .15),
          child: const CustomeBookImage(),
        ),
        const SizedBox(
          height: 45,
        ),
        Text(
          'TheJungleBook',
          style: Styles.textStyle30
              .copyWith(fontWeight: FontWeight.bold, fontFamily: kAmiriBold),
        ),
        const SizedBox(height: 9),
        Opacity(
          opacity: 0.7,
          child: Text(
            'RaudyanKliping',
            style: Styles.textStyle18.copyWith(fontFamily: kAmiriBold),
          ),
        ),
        const SizedBox(height: 10),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
