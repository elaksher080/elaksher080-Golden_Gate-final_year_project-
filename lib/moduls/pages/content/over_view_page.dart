import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/pages/content/rooms_view.dart';

import 'comments_view.dart';
import 'content_view.dart';
import 'over_view_view.dart';

class OverViewPage extends StatefulWidget {
  const OverViewPage({super.key});

  @override
  _OverViewPageState createState() => _OverViewPageState();
}

class _OverViewPageState extends State<OverViewPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Complete Python Bootcamp From Zero to Hero in Python',
          maxLines: 2,
          style: theme.textTheme.titleLarge?.copyWith(fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsetsDirectional.only(top: 25, start: 25, end: 25),
            child: Image.asset(
              'assets/photos/slider.png',
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicator: const BoxDecoration(),
              tabs: const [
                Tab(text: 'OverView'),
                Tab(text: 'Comments'),
                Tab(text: 'Rooms'),
                Tab(text: 'Content'),
              ],
              labelStyle: const TextStyle(fontSize: 13)),
          const SizedBox(height: 1),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                OverViewView(),
                CommentsView(),
                RoomsView(),
                ContentView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
