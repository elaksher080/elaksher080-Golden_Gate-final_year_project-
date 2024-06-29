import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CourseView extends StatelessWidget {
  static const String routeName = "courseview";
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Text(
            textAlign: TextAlign.left,
            'My Courses',
            style:
            Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18),
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset(
                            'assets/photos/slider.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Software testing perfect\ncourse From beginner\nto expert',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 11,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Mentor Name',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8D979D),
                                fontSize: 9,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                const Text(
                                  '3.5',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 2),
                                Image.asset('assets/photos/rating.png'),
                                const SizedBox(width: 2),
                                const Text(
                                  '(360,712)',
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Color(0xff8D979D),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Course duration: 17h 22min',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 2,color: Colors.grey,)
              ],
            );
          },
        ));
  }
}
