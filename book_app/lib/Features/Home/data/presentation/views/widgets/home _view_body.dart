import 'package:book_app/Features/Home/data/presentation/views/widgets/Best_seller_List_View_Iteam.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/custom_appBar.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/featchured_List_View_iteam.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/featchured_list_view.dart';
import 'package:book_app/core/Utiles/assets.dart';
import 'package:book_app/core/Utiles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatchuredBooksListView(),
          SizedBox(
            height: 40,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 11,
          ),
          BestSellerListViewIteam(),
        ],
      ),
    );
  }
}
