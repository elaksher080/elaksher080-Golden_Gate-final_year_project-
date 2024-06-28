import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  static const String routeName = "search";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
          padding: EdgeInsets.fromLTRB(13.49, 5, 20, 5),
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff6c6c6c)),
            borderRadius: BorderRadius.circular(55),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(4, 0, 0, 0),
                height: 17,
                child: Icon(
                  Icons.search_rounded,
                  size: 20,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 12, left: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search interests',
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 3),
                height: 17,
                child: Icon(
                  Icons.mic,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Search",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: Color(0xff000000),
          ),
        ),
      ),
    );
  }
}
