import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golden_gate/moduls/pages/categories/categories_view.dart';

import 'package:golden_gate/moduls/pages/home/state.dart';

import '../categories/Courses_view.dart';
import '../content/over_view_page.dart';
import 'courses_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Text(
            "Step forward for your future !",
            style: theme.textTheme.titleLarge?.copyWith(fontSize: 24),
          ),
        ),
        const SizedBox(height: 1),
        Align(
          alignment: Alignment.centerRight,
          child: Image.asset(
            "assets/icons/caracter1.png",
            height: 204.14,
            width: 274.5,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Text(
            "Popular courses this month",
            style: theme.textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Text(
            "Empower Yourself Access\nOur most searched online courses today",
            style: theme.textTheme.bodySmall!
                .copyWith(color: const Color(0xFF8D979D), fontSize: 12),
          ),
        ),
        SizedBox(
          height: 230,
          child: BlocProvider(
            create: (context) => CoursesCubit()..getCourses(),
            child: BlocBuilder<CoursesCubit, GetCoursesState>(
              builder: (context, state) {
                if (state is GetCoursesLoading) {
                  return const Center(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: CircularProgressIndicator(),
                  ));
                } else if (state is GetCoursesError) {
                  return const Center(child: Text('Failed to load courses'));
                } else if (state is GetCoursesSuccess) {
                  final courses = state.response;
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: courses.data?.length,
                    itemBuilder: (context, index) {
                      return AspectRatio(
                        aspectRatio: 2 / 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OverViewPage(
                                          url: courses.data?[index].thumbnail
                                                  ?.url ??
                                              '',
                                          title: courses.data?[index].title
                                              ??
                                              '',
                                          desc: courses.data?[index].description
                                               ??
                                              '',
                                          supTitle: courses.data?[index].subtitle
                                              ??
                                              '',
                                          language: courses.data?[index].languages?.first
                                              ??
                                              '',
                                          instructor: courses.data?[index].instructor?.sId
                                              ??
                                              '',
                                          duration:courses.data?[index].duration
                                               ??
                                              0,
                                          level: courses.data?[index].level
                                               ??
                                              '',
                                        )),
                              );
                            },
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
                                  courses.data?[index].title ?? '',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  courses.data?[index].instructor?.sId ??
                                      'Mentor Name',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8D979D),
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Row(
                                  children: [
                                    Text(
                                      '${courses.data?[index].avgRatings ?? 0}',
                                      style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(width: 2),
                                    Image.asset('assets/photos/rating.png'),
                                    const SizedBox(width: 2),
                                    Text(
                                      '(${courses.data?[index].ratingsNumber ?? 0})',
                                      style: const TextStyle(
                                        fontSize: 10,
                                        color: Color(0xff8D979D),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  '${courses.data?[index].price ?? 0} EGP',
                                  style: const TextStyle(
                                    color: Color(0xff090C9B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(
                      child: Text('Welcome to the courses page'));
                }
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Categories",
                  style: theme.textTheme.bodyLarge?.copyWith(fontSize: 20),
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CategoryView()),
                );
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("See All",
                      style: theme.textTheme.bodySmall!.copyWith(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF090C9B)))),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(children: [
                Row(
                  children: [
                    GestureDetector(
                      child: const CategoryCard(
                          categoryName: 'Personal Development'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(categoryName: 'Social Media'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(categoryName: 'Office'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(categoryName: 'Health & Fit'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(categoryName: 'Music'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(
                          categoryName: 'Finance & Accounting'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: const CategoryCard(
                          categoryName: 'Marketing'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(categoryName: 'Design'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(categoryName: 'Photography & video'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(categoryName: 'Development'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(categoryName: 'Business'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(
                          categoryName: 'IT & Software'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoursesView()),
                        );
                      },
                    ),
                  ],
                ),
              ]),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),

        SizedBox(
          height: 270,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ReviewCard(
                reviewText: 'student review and what he\n did in the course student\n review and what he did in the\n course student review and\n what he did in the course ',
                personName: 'person name',
                courseName: 'name of the course -\n year of the course',

              ),
              ReviewCard(
                reviewText: 'student review and what he\n did in the course student\n review and what he did in the\n course student review and\n what he did in the course ',
                personName: 'person name',
                courseName: 'name of the course -\n year of the course',

              ),
              ReviewCard(
                reviewText: 'student review and what he\n did in the course student\n review and what he did in the\n course student review and\n what he did in the course ',
                personName: 'person name',
                courseName: 'name of the course -\n year of the course',

              ),
              ReviewCard(
                reviewText: 'student review and what he\n did in the course student\n review and what he did in the\n course student review and\n what he did in the course ',
                personName: 'person name',
                courseName: 'name of the course -\n year of the course',

              ),
              ReviewCard(
                reviewText: 'student review and what he\n did in the course student\n review and what he did in the\n course student review and\n what he did in the course ',
                personName: 'person name',
                courseName: 'name of the course -\n year of the course',

              ),
              ReviewCard(
                reviewText: 'student review and what he\n did in the course student\n review and what he did in the\n course student review and\n what he did in the course ',
                personName: 'person name',
                courseName: 'name of the course -\n year of the course',

              ),




            ],
          ),
        )

      ]),
    );
  }
}


class ReviewCard extends StatelessWidget {
  final String reviewText;
  final String personName;
  final String courseName;


  ReviewCard({
    required this.reviewText,
    required this.personName,
    required this.courseName,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.format_quote, size: 24),
            SizedBox(height: 8),
            Text(
              reviewText,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.person_pin, size: 28),
                SizedBox(width: 4),
                Text(personName,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Icon(Icons.play_circle_outline, size: 28),
                SizedBox(width: 4),
                Text(courseName,
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewsRow extends StatelessWidget {
  final List<ReviewCard> reviews;

  ReviewsRow({required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: reviews,
    );
  }
}
