import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  static const String routeName = "wishlist";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: 4,
        itemBuilder: (context, index) {
          return CourseCard();
        },
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset('assets/photos/Group 16.png'),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The name of the course',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Mentor Name',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    '459 EGP',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.0),
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.red),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
