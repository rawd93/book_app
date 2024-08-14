import 'package:book_app/Features/Home/data/presentation/views/widgets/Best_seller_List_View_Iteam.dart';
import 'package:book_app/Features/Search/views/widgets/Custom_TextField.dart';
import 'package:book_app/Features/Search/views/widgets/search_view_Listview.dart';
import 'package:book_app/core/Utiles/App_Router.dart';
import 'package:book_app/core/Utiles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomTextField(),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SearchViewListView(),
        ],
      ),
    );
  }
}
