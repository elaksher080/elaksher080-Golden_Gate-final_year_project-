import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/pages/account/account_view.dart';
import 'package:golden_gate/moduls/pages/chatbot/chatbot_view.dart';
import 'package:golden_gate/moduls/pages/home/home_view.dart';
import 'package:golden_gate/moduls/pages/mycart/mycart_view.dart';
import 'package:golden_gate/moduls/pages/mycourses/mycourse_view.dart';

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
        leadingWidth: 50,
        leading: Container(
            margin: EdgeInsets.only(left: 10),
            child: Center(
                child: Image.asset(
                  "assets/icons/logo.png",
                  width: 40,
                ))),
        title: Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
          padding: EdgeInsets.fromLTRB(13.49, 5, 30, 5),
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff6c6c6c)),
            borderRadius: BorderRadius.circular(55),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
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
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Color(0xff090C9B),
            ),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Color(0xff090c9b),
          ),
        ],
      ),
      // bottomNavigationBar: GNav(
      //
      //   gap: 4,
      //   tabs: [
      //     GButton(
      //       icon: Icons.chat_outlined,hoverColor: Colors.red,
      //       text: 'Chatbot',
      //
      //     ),
      //     GButton(
      //       icon: Icons.chat_outlined,
      //       text: 'Chatbot',
      //     ),
      //     GButton(
      //       icon: Icons.chat_outlined,
      //       text: 'Chatbot',
      //     ),
      //     GButton(
      //       icon: Icons.chat_outlined,
      //       text: 'Chatbot',
      //     ),
      //     GButton(
      //       icon: Icons.chat_outlined,
      //       text: 'Chatbot',
      //     ),
      //
      //   ],
      // ),
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
              icon: ImageIcon(AssetImage("assets/icons/home_icon.png")),
              label: "HOME"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/mycourses_icon.png")),
              label: "MY COURSES"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/cart_icon.png")),
              label: "MY CART"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/chatbot_icon.png")),
              label: "CHAT BOT"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/account_icon.png")),
              label: "Account"),
        ],
      ),

      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.symmetric(horizontal: 16), // Adjust padding as needed
      //   child: GNav(
      //     gap: 4,
      //     tabs: [
      //       GButton(
      //         icon: Icons.chat_outlined,
      //         text: 'Chatbot',
      //         textStyle: TextStyle(fontSize: 12), // Adjust text size here
      //       ),
      //       GButton(
      //         icon: Icons.chat_outlined,
      //         text: 'Chatbot',
      //         textStyle: TextStyle(fontSize: 12), // Adjust text size here
      //       ),
      //       GButton(
      //         icon: Icons.chat_outlined,
      //         text: 'Chatbot',
      //         textStyle: TextStyle(fontSize: 12), // Adjust text size here
      //       ),
      //       GButton(
      //         icon: Icons.chat_outlined,
      //         text: 'Chatbot',
      //         textStyle: TextStyle(fontSize: 12), // Adjust text size here
      //       ),
      //       GButton(
      //         icon: Icons.chat_outlined,
      //         text: 'Chatbot',
      //         textStyle: TextStyle(fontSize: 12), // Adjust text size here
      //       ),
      //     ],
      //   ),
      // ),

      body: screens[selectedIndex],
    );
  }
}
// appBar: AppBar(
//   leading: Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Image.asset('assets/icons/logo.png'),
//   ),
//   title: Row(
//     children: [
//       Expanded(
//         child: SizedBox(
//           height: 35.0,
//
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: '  Search',
//               fillColor: Colors.white,
//               suffixIcon: const Icon(
//                 Icons.mic,
//                 color: Color(0xff090C9B),
//               ),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(16.0),
//               ),
//               filled: true,
//               contentPadding: EdgeInsets.zero,
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
//   actions: [
//     IconButton(
//       icon: const Icon(
//         Icons.favorite_border_outlined,
//         color: Color(0xff090C9B),
//       ),
//       onPressed: () {},
//     ),
//     Padding(
//       padding:  EdgeInsets.only(left: 0, right: 0),
//
//       child: Image.asset('assets/photos/Vector.png'),
//     ),
//   ],
// ),