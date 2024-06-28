import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCommentItem extends StatelessWidget {
  const CustomCommentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.all(10),
      padding: const EdgeInsets.only(right: 8, left: 4, top: 8, bottom: 8),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 8),
              child: SvgPicture.asset(
                'assets/icons/i1.svg',
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  'email of the user',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'comment or question of the user in this course, he can put photo or video (media) ..............',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset(
                      'assets/icons/comment.svg',
                    ),
                    Text('9', style: Theme.of(context).textTheme.titleSmall),
                    const SizedBox(
                      width: 8,
                    ),
                    SvgPicture.asset(
                      'assets/icons/like.svg',
                    ),
                    Text('9', style: Theme.of(context).textTheme.titleSmall),
                    const SizedBox(
                      width: 8,
                    ),
                    SvgPicture.asset(
                      'assets/icons/dislike.svg',
                    ),
                    Text('9', style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
