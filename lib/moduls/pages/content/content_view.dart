import 'package:flutter/material.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Course content',
              style: theme.textTheme.titleMedium?.copyWith(fontSize: 20),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: RichText(
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: theme.textTheme.bodySmall
                                      ?.copyWith(color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'Section ${index + 1}: ',
                                      style: theme.textTheme.titleMedium?.copyWith(
                                        fontSize: 17,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                      'the name of the first video of the section .',
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(Icons.video_library_outlined),
                                  Text(
                                    " 42min",
                                    style: theme.textTheme.bodySmall ?.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
