import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/pages/HomePage.dart';

class Intersets extends StatefulWidget {
  static const String routeName = "intersets";

  Intersets({super.key});

  @override
  State<Intersets> createState() => _IntersetsState();
}

class _IntersetsState extends State<Intersets> {
////////////////////////////////////////////////
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

  /////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: EdgeInsets.only(top: 50, left: 8, bottom: 8),
              padding: EdgeInsets.only(left: 5),
              child: Image.asset("assets/icons/logo2.png",
                  alignment: Alignment.centerLeft, height: 50)),
          Container(
            margin: EdgeInsets.fromLTRB(18, 10, 0, 33.5),
            child: Text(
              'Choose your interests',
              style: theme.textTheme.titleMedium,
            ),
          ),
          ////////////////////////////////////////
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 45),
            padding: EdgeInsets.fromLTRB(13.49, 5, 146, 5),
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff6c6c6c)),
              borderRadius: BorderRadius.circular(55),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(3, 0, 11.49, 0),
                  height: 17,
                  child: Icon(
                    Icons.search_rounded,
                    size: 20,
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search interests',
                      border: InputBorder.none,
                    ),
                    style: theme.textTheme.bodySmall
                        ?.copyWith(color: Color(0xff6c6c6c)),
                  ),
                ),
              ],
            ),
          ),
          ////////////////////////////////////////////////////////////////
          Container(
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
                        style: theme.textTheme.bodyMedium?.copyWith(
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 18),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          ///////////////////////////////////////////////////////////////
          SizedBox(height: 100),
          ////////////////////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              height: 52,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xff090c9b)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Container(
                  // button1Dpz (I1:620;10:81)
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
