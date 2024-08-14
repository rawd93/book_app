

import 'package:book_app/Features/Home/data/presentation/views/widgets/Custom_book_Iteam.dart';
import 'package:flutter/cupertino.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
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
    ;
  }
}
