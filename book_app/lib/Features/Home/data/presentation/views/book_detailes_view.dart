import 'package:book_app/Features/Home/data/presentation/views/widgets/book_detailes_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailesViewBody(),
    );
  }
}
