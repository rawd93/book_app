import 'package:book_app/Features/Home/data/presentation/views/widgets/Similar%20_book_list_view.dart';
import 'package:book_app/core/Utiles/styles.dart';
import 'package:flutter/cupertino.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You Can Also Like',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SimilarBookListView(),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
