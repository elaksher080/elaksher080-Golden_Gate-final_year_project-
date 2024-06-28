import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/pages/account/account_view.dart';
import 'package:golden_gate/moduls/pages/chatbot/chatbot_view.dart';
import 'package:golden_gate/moduls/pages/home/home_view.dart';
import 'package:golden_gate/moduls/pages/home/search.dart';
import 'package:golden_gate/moduls/pages/mycart/mycart_view.dart';
import 'package:golden_gate/moduls/pages/mycourses/mycourse_view.dart';

import '../wishlist/wishlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Size get preferredSize => throw UnimplementedError();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeView(),
    MyCourseView(),
    MyCartView(),
    ChatBotView(),
    AcountView()
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 65,
        leading: Container(
            margin: EdgeInsets.only(left: 10),
            child: Center(
                child: Image.asset(
              "assets/icons/logo.png",
              width: 40,
            ))),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Search()),
            );
          },
          child: Container(
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(
                Icons.favorite_border_outlined,
                color: Color(0xff090C9B),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Wishlist()),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(
          color: Colors.blueAccent,
          size: 32,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 28,
        ),
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "HOME"),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline), label: "MY COURSES"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "MY CART"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined), label: "CHAT BOT"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Account"),
        ],
      ),
      body: screens[selectedIndex],
    );
  }
}
