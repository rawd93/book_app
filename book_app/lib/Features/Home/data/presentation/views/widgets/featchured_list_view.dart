


import 'package:book_app/Features/Home/data/presentation/views/widgets/featchured_List_View_iteam.dart';
import 'package:flutter/cupertino.dart';

class FeatchuredListView extends StatelessWidget {
  const FeatchuredListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(10),
            child: FeatchuredListViewIteam(),
          );
        },
      ),
    );
  }
}
