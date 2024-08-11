import 'package:book_app/core/widgets/Custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
                backgroundColor: Colors.white,
                text: '19.99',
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16))),
          ),
          Expanded(
            child: CustomButton(
              fontSize: 16,
              backgroundColor: Colors.orange,
              text: 'FreePreview',
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
