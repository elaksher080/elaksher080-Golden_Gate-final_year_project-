import 'package:flutter/material.dart';

import 'development_items.dart';

class CategoryView extends StatefulWidget {
  static const String routeName = "category_view";

  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
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
                  Text("Categories ",
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
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "Development",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "Business",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "Finance & Accounting",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "IT & Software ",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "Office Productivity",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "Personal Development",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "Design",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "Marketing",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "Lifestyle",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "Photography & video",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "Health & fitness",
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentItem()),
                  );
                },
                child: CategoriesCard(
                  name: "Music",
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
        height: 50,
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
