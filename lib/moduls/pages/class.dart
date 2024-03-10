import 'package:flutter/material.dart';

class Intersets extends StatefulWidget {
  static const String routeName = "intersets";

  const Intersets({super.key});

  @override
  _InterestListState createState() => _InterestListState();
}

class _InterestListState extends State<Intersets> {
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

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
            color: isSelected ? Colors.blue : null,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                interest,
                style: TextStyle(
                  fontSize: 16.0,
                  color: isSelected ? Colors.white : null,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
