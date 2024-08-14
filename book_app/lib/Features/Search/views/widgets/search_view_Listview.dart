



import 'package:book_app/Features/Home/data/presentation/views/widgets/Best_seller_List_View_Iteam.dart';
import 'package:book_app/core/Utiles/App_Router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SearchViewListView extends StatelessWidget {
  const SearchViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: GestureDetector(
                child: const BestSellerListViewIteam(),
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kBookDetailesView);
                },
              ),
            );
          }),
    );
    ;
  }
}
