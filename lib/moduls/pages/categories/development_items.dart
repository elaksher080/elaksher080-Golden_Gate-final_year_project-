import 'package:flutter/material.dart';

import 'Courses_view.dart';

class DevelopmentItem extends StatelessWidget {
  const DevelopmentItem({super.key});

  static const String routeName = "development_item";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text("Development ",
                      style: theme.textTheme.bodyLarge,
                      textAlign: TextAlign.left),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursesView()),
                  );
                },
                child: CategoriesCard(
                  name: "Web Development",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursesView()),
                  );
                },
                child: CategoriesCard(
                  name: "Data science",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursesView()),
                  );
                },
                child: CategoriesCard(
                  name: "Mobile Development",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursesView()),
                  );
                },
                child: CategoriesCard(
                  name: "Programming Languages",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursesView()),
                  );
                },
                child: CategoriesCard(
                  name: "Game Development",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursesView()),
                  );
                },
                child: CategoriesCard(
                  name: "Database Design & \n Development",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursesView()),
                  );
                },
                child: CategoriesCard(
                  name: "Software testing",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursesView()),
                  );
                },
                child: CategoriesCard(
                  name: "Software Engineering",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursesView()),
                  );
                },
                child: CategoriesCard(
                  name: "Software Development\n tools",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursesView()),
                  );
                },
                child: CategoriesCard(
                  name: "No-Code Development",
                )),
          ],
        ),
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(right: 10, left: 12, bottom: 15),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        height: 60,
        width: mediaQuery.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: theme.textTheme.bodySmall,
            ),
            Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    );
  }
}
