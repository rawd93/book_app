import 'package:book_app/Features/Home/data/presentation/views/widgets/Best_seller_List_View_Iteam.dart';
import 'package:book_app/core/Utiles/App_Router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        //   shrinkWrap: true, //خود ارتفاع البقيان
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GestureDetector(
              child: const BestSellerListViewIteam(),
              onTap: () {
                GoRouter.of(context).push(AppRouter.KBookDetailesView);
              },
            ),
          );
        });
  }
}
