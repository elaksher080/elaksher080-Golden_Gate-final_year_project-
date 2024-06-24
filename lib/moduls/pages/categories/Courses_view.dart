import 'package:flutter/material.dart';

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
            SizedBox(
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
            SizedBox(
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
            SizedBox(
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
                            'assets/photos/img_3.png',
                            width: 173,
                            height: 104,
                          ),
                          const Text(
                            'Mobile development \n perfect course learn\n dart  and flutter from\n zero to hero',
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
            SizedBox(
              height: 20,
            ),
            //////////////////////////////////////////////
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 2.0,
              // Height of the horizontal line
              width: double.infinity,
              // Width of the line, stretching to the edges of the parent
              color: Color(0xFFDBDBDB), // Color of the line
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
            SizedBox(
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
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 2.0,
              // Height of the horizontal line
              width: double.infinity,
              // Width of the line, stretching to the edges of the parent
              color: Color(0xFFDBDBDB), // Color of the line
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
            SizedBox(
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
                            'assets/photos/img.png',
                            width: 173,
                            height: 104,
                          ),
                          const Text(
                            'The Complete Web \n Development Course \n From  Zero to Hero',
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
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 2.0,
              // Height of the horizontal line
              width: double.infinity,
              // Width of the line, stretching to the edges of the parent
              color: Color(0xFFDBDBDB), // Color of the line
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
            SizedBox(
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
                        child: CategoryCard(categoryName: 'Python'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'Angular'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'ReactJS'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'C++ '),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'Next.JS'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'JavaScript'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'Java'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                    ]),
                    Row(children: [
                      GestureDetector(
                        child: CategoryCard(categoryName: 'PHP'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'Security'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'Dart'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'Flutter'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'Android'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'Swift'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: CategoryCard(categoryName: 'AI'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesView()),
                          );
                        },
                      ),
                    ]),
                  ]),
                ],
              ),
            ),

            Text("moamen"),
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
        width: 120,
        // padding: const EdgeInsets.symmetric(
        //   horizontal: 40.0,
        //
        // ),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff090C9B)),
          borderRadius: BorderRadius.circular(2),
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
