import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final List<String> interests = [
      'Marketing',
      'Music',
      'Health & Fit',
      'Social Media',
      'Personal skills',
      'Design',
      'Office',
      'Teaching skills',
      'IT & Software',
      'Photography',
      'Yoga',
      'Writing',
      'Meditation',
    ];
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: interests.map((interest) {
                final isSelected = selectedInterests.contains(interest);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isSelected) {
                        selectedInterests.remove(interest);
                      } else {
                        selectedInterests.add(interest);
                      }
                    });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: isSelected
                        ? Color(0xFF090C9B).withOpacity(.45)
                        : Color(0xFFE6E6E6),
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        interest,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
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
