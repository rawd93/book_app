import 'package:book_app/Features/Home/data/presentation/views/widgets/custom_appBar.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/featchured_List_View_iteam.dart';
import 'package:book_app/Features/Home/data/presentation/views/widgets/featchured_list_view.dart';
import 'package:book_app/core/Utiles/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeatchuredListView(),
      ],
    );
  }
}

