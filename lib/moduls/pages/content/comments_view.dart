import 'package:flutter/material.dart';

import 'custom_comment_item.dart';

class CommentsView extends StatelessWidget {
  const CommentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CustomCommentItem();
      },
      itemCount: 10,
    );
  }
}
