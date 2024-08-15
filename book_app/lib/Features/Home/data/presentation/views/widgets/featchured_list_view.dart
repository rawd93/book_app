import 'package:flutter/cupertino.dart';

import 'Custom_book_Iteam.dart';

class FeatchuredBooksListView extends StatelessWidget {
  const FeatchuredBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomeBookImage(),
          );
        },
      ),
    );
  }
}
