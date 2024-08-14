import 'package:book_app/core/Utiles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.yellow,
          ),
          const SizedBox(
            width: 6.3,
          ),
          const Text(
            '4.8',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            '(2390)',
            style: Styles.textStyle14.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
