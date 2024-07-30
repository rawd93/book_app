

import 'package:book_app/Features/Home/data/presentation/views/widgets/home%20_view_body.dart';
import 'package:flutter/material.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: HomeviewBody(),
    );
  }
}