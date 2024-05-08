import 'package:flutter/material.dart';

import '../../register/sign_up.dart';

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
            style: theme.textTheme.titleLarge,
          ),
        ),
        Image.asset(
          "assets/icons/caracter1.png",
          height: 250,
          fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Text(
            "Popular courses this month",
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Text(
              "Empower Yousel\nAccess Our most searched ornline courses today",
              style: theme.textTheme.bodySmall!
                  .copyWith(color: Color(0xFF8D979D))),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Image.asset(
            "assets/icons/Group 42.png",
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Categories",
                  style: theme.textTheme.bodyLarge,
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text("See All",
                    style: theme.textTheme.bodySmall!.copyWith(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF090C9B)))),
          ],
        ),
        SizedBox(
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                child: carddd(
                  title: 'Marketing',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SiginUp()),
                  );
                },
              ),
              GestureDetector(
                child: carddd(
                  title: 'Music',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SiginUp()),
                  );
                },
              ),
              GestureDetector(
                child: carddd(
                  title: 'Health & Fit',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SiginUp()),
                  );
                },
              ),
              GestureDetector(
                child: carddd(
                  title: 'Social Media',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SiginUp()),
                  );
                },
              ),
              GestureDetector(
                child: carddd(
                  title: 'Personal skills',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SiginUp()),
                  );
                },
              ),
              GestureDetector(
                child: carddd(
                  title: 'Design',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SiginUp()),
                  );
                },
              ),
              GestureDetector(
                child: carddd(
                  title: 'Office',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SiginUp()),
                  );
                },
              ),
              GestureDetector(
                child: carddd(
                  title: 'Teaching skills',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SiginUp()),
                  );
                },
              ),
              GestureDetector(
                child: carddd(
                  title: 'IT & Software',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SiginUp()),
                  );
                },
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Image.asset(
            "assets/icons/Group 43.png",
            height: 250,
            fit: BoxFit.cover,
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