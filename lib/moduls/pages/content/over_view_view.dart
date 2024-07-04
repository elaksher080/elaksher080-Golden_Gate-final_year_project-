import 'package:flutter/material.dart';

class OverViewView extends StatelessWidget {
  const OverViewView({super.key, required this.desc, required this.supTitle, required this.language, required this.instructor, required this.duration, required this.level});
  final String desc;
  final String supTitle;
  final String language;
  final String instructor;
  final int duration;
  final String level;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      instructor,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: const Color(0xFF6A7176),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'About this course',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  supTitle,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          const Divider(color: Colors.grey, height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'By the number',
                  style: Theme.of(context).textTheme.bodyLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Skill level:$level',
                          style: Theme.of(context).textTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,

                        ),
                        Text(
                          'Students: 25',
                          style: Theme.of(context).textTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,

                        ),
                        Text(
                          'Lectures: 100 ',
                          style: Theme.of(context).textTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,

                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Languages: $language',
                          style: Theme.of(context).textTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,

                        ),
                        Text(
                          ' Captions: yes',
                          style: Theme.of(context).textTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,

                        ),
                        Text(
                          'Total hours:  $duration hours',
                          style: Theme.of(context).textTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,

                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(color: Colors.grey, height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Features',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'Available on .............',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ,
                ),
              ],
            ),
          ),
          const Divider(color: Colors.grey, height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  desc,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
