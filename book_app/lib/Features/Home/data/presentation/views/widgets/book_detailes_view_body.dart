import 'package:book_app/Constatnt.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/Book%20_Rating.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/Book_action.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/Custom_book_Iteam.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/Similar%20_book_list_view.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/book_details_section.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/custom_detiles_view_appBar.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/similar_Book_section.dart';
import 'package:book_app/core/Utiles/styles.dart';
import 'package:book_app/core/widgets/Custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width; //عرض شاشة

    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomBookDetailesViewAppBar(),
                  BookDeatiesSection(),
                  SizedBox(
                    height: 30,
                  ),
                  BookAction(),
                  SizedBox(
                    height: 40,
                  ),
                  SimilarBookSection()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
