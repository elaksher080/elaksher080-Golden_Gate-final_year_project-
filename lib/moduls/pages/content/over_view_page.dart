import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/pages/content/rooms_view.dart';

import 'comments_view.dart';
import 'content_view.dart';
import 'over_view_view.dart';


class OverViewPage extends StatefulWidget {
  const OverViewPage({super.key, required this.url, required this.title, required this.desc, required this.supTitle, required this.language, required this.instructor, required this.duration, required this.level});
  final String url;
  final String title;
  final String desc;
  final String supTitle;
  final String language;
  final String instructor;
  final int duration;
  final String level;
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
          widget.title,
          maxLines: 2,
          style: theme.textTheme.titleLarge?.copyWith(fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsetsDirectional.only(top: 25, start: 25, end: 25),
            child: CachedNetworkImage(
              height: MediaQuery.of(context).size.height/3,
               width: double.infinity,
              imageUrl:widget.url ,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => Image.asset(
                'assets/photos/img.png',
                width: 173,
                height: 104,
                fit: BoxFit.cover,
              ),
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
              children:  [
                OverViewView(desc: widget.desc, supTitle: widget.supTitle, language: widget.language, instructor: widget.instructor, duration: widget.duration, level: widget.level,),
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
