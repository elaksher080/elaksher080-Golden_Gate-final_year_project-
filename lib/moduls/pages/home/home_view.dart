import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/pages/categories/categories_view.dart';

import '../categories/Courses_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    List<String> selectedInterests = [];
    var theme = Theme.of(context);
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
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
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Text(
            "Popular courses this month",
            style: theme.textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Text(
            "Empower Yourself Access\nOur most searched ornline courses today",
            style: theme.textTheme.bodySmall!
                .copyWith(color: Color(0xFF8D979D), fontSize: 12),
          ),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Categories",
                  style: theme.textTheme.bodyLarge?.copyWith(fontSize: 20),
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryView()),
                );
              },
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("See All",
                      style: theme.textTheme.bodySmall!.copyWith(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF090C9B)))),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),

        SizedBox(
          height: 90,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(children: [
                Row(
                  children: [
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Personal Development'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Social Media'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Office'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Health & Fit'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Music'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Finance & Accounting'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Office Productivity'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Development'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Business'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Finance & Accounting'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Marketing'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Design'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Personal Skills'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                    GestureDetector(
                      child: CategoryCard(categoryName: 'Photography & video'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesView()),
                        );
                      },
                    ),
                  ],
                )
              ]),
            ],
          ),
        ),

        SizedBox(
          height: 20,
        ),
        Container(
          color: Colors.grey[300],
          height: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              8,
              (index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'student review and what he\ndid in the course student\nreview and what he did in the\ncourse student review and\nwhat he did in the course',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                          ),
                          SizedBox(width: 2),
                          Text(
                            'Person Name',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.play_circle,
                          ),
                          SizedBox(width: 2),
                          Text(
                            'name of the course -\nyear of the course',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}

class carddd extends StatelessWidget {
  const carddd({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: Colors.black12,
      child: Padding(
        padding: EdgeInsets.all(9.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
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

///////////////////////////////

class CategoryCard extends StatelessWidget {
  final String categoryName;

  const CategoryCard({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff090C9B)),
          borderRadius: BorderRadius.circular(25.0),
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
