import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:golden_gate/moduls/pages/categories/state%20(2).dart';

import 'cubit.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({super.key});

  static const String routeName = "courses_view";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    "Web Development ",
                    style: theme.textTheme.titleLarge?.copyWith(fontSize: 23),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Text("Courses made for you ",
                      style: theme.textTheme.titleSmall?.copyWith(fontSize: 12),
                      textAlign: TextAlign.end),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            /////////////////////////////
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "Popular development courses \n this month ",
                    style: theme.textTheme.bodyLarge?.copyWith(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //////////////////////////////////////////////
            /*Start Slider From Here */
      SizedBox(
        height: 200,
        child: BlocProvider(
          create: (context) => GetPopularCoursesCubit()..getPopularCourses(),
          child: BlocBuilder<GetPopularCoursesCubit, GetPopularCoursesState>(
            builder: (BuildContext context, GetPopularCoursesState state) {
              if (state is GetPopularCoursesLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is GetPopularCoursesSuccess) {
                final courses = state.response;
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: courses.data?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    return AspectRatio(
                      aspectRatio: 2 / 3,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CachedNetworkImage(
                              imageUrl: courses.data?[index].thumbnail?.url ?? '',
                              width: 173,
                              height: 104,
                              fit: BoxFit.cover,
                              errorWidget: (context, url, error) => Image.asset(
                                'assets/photos/img.png',
                                width: 173,
                                height: 104,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              courses.data?[index].title ??'',
                              style: const TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 11,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              courses.data?[index].instructor??'Mentor Name',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8D979D),
                                fontSize: 9,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Row(
                              children: [
                                Text(
                                  '${courses.data?[index].avgRatings ??3.5}',
                                  style: const TextStyle(
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
                          
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(child: Text('Failed to load courses'));
              }
            },
          ),
        ),
      ),


      const SizedBox(
              height: 20,
            ),
            //////////////////////////////////////////////
            Container(
              height: 2.0,
              // Height of the horizontal line
              width: double.infinity,
              // Width of the line, stretching to the edges of the parent
              color: const Color(0xFFDBDBDB), // Color of the line
            ),
            /////////////////////////////
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "New Courses",
                    style: theme.textTheme.bodyLarge?.copyWith(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //////////////////////////////////////////////
            /*Start Slider From Here */
            SizedBox(
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/photos/img_1.png',
                            width: 173,
                            height: 104,
                          ),
                          const Text(
                            'Software testing perfect\ncourse From beginner\nto expert',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 11,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const SizedBox(
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
                          const SizedBox(
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
                          const Row(
                            children: [
                              Text(
                                '349 EGP',
                                style: TextStyle(
                                  color: Color(0xff090C9B),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '400 EGP',
                                style: TextStyle(
                                  color: Color(0xff8D979D),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            //////////////////////////////////////////////
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 2.0,
              // Height of the horizontal line
              width: double.infinity,
              // Width of the line, stretching to the edges of the parent
              color: const Color(0xFFDBDBDB), // Color of the line
            ),
            /////////////////////////////
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "Most viewed development courses ",
                    style: theme.textTheme.bodyLarge?.copyWith(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //////////////////////////////////////////////
            /*Start Slider From Here */
            SizedBox(
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                      (index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/photos/img_1.png',
                            width: 173,
                            height: 104,
                          ),
                          const Text(
                            'Software testing perfect\ncourse From beginner\nto expert',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 11,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const SizedBox(
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
                          const SizedBox(
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
                          const Row(
                            children: [
                              Text(
                                '349 EGP',
                                style: TextStyle(
                                  color: Color(0xff090C9B),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '400 EGP',
                                style: TextStyle(
                                  color: Color(0xff8D979D),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            //////////////////////////////////////////////
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 2.0,
              // Height of the horizontal line
              width: double.infinity,
              // Width of the line, stretching to the edges of the parent
              color: const Color(0xFFDBDBDB), // Color of the line
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "Popular topics ",
                    style: theme.textTheme.bodyLarge?.copyWith(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(children: [
                    Row(children: [
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'Python'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'Angular'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'ReactJS'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'C++ '),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'Next.JS'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'JavaScript'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'Java'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                    ]),
                    Row(children: [
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'PHP'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'Security'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'Dart'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'Flutter'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'Android'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'Swift'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const CategoryCard(categoryName: 'AI'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoursesView()),
                          );
                        },
                      ),
                    ]),
                  ]),
                ],
              ),
            ),

            const Text("moamen"),
          ],
        ),
      ),
    );
  }
}

class PopularCourses extends StatelessWidget {
  const PopularCourses({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryName;

  const CategoryCard({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 150,
        // padding: const EdgeInsets.symmetric(
        //   horizontal: 40.0,
        //
        // ),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff090C9B)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            categoryName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Color(0xff090C9B),
            ),
          ),
        ),
      ),
    );
  }
}
