import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../content/over_view_page.dart';
import '../home/courses_cubit.dart';
import '../home/state.dart';

class MyCourseView extends StatelessWidget {
  const MyCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'My Courses',
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18),
        ),
      ),
      body: BlocProvider(
        create: (context) => CoursesCubit()..getCourses(),
        child: BlocBuilder<CoursesCubit, GetCoursesState>(
          builder: (BuildContext context, GetCoursesState state) {
            if (state is GetCoursesLoading) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (state is GetCoursesError) {
              return const Center(child: Text('Failed to load courses'));
            } else if (state is GetCoursesSuccess) {
              final courses = state.response;
              return ListView.builder(
                itemCount: courses.data?.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OverViewPage(
                                  url: courses.data?[index].thumbnail
                                      ?.url ??
                                      '',
                                  title: courses.data?[index].title
                                      ??
                                      '',
                                  desc: courses.data?[index].description
                                      ??
                                      '',
                                  supTitle: courses.data?[index].subtitle
                                      ??
                                      '',
                                  language: courses.data?[index].languages?.first
                                      ??
                                      '',
                                  instructor: courses.data?[index].instructor?.sId
                                      ??
                                      '',
                                  duration:courses.data?[index].duration
                                      ??
                                      0,
                                  level: courses.data?[index].level
                                      ??
                                      '',
                                )),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child:CachedNetworkImage(
                                    imageUrl:courses.data?[index].thumbnail?.url ?? '',

                                    fit: BoxFit.cover,
                                    errorWidget: (context, url, error) => Image.asset(
                                      'assets/photos/img.png',
                                      width: 173,
                                      height: 104,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4),
                              Expanded(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      courses.data?[index].title  ?? '',                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 11,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      courses.data?[index].instructor?.sId ?? 'Mentor Name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff8D979D),
                                        fontSize: 9,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Row(
                                      children: [
                                        Text(
                                          '${courses.data?[index].avgRatings ?? 0}',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Image.asset('assets/photos/rating.png'),
                                        SizedBox(width: 2),
                                        Text(
                                          '(${courses.data?[index].ratingsNumber ?? 0})',
                                          style: TextStyle(
                                            fontSize: 9,
                                            color: Color(0xff8D979D),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      'Course duration: ${'${courses.data?[index].duration ?? 0}' }',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(height: 2, color: Colors.grey),
                    ],
                  );
                },
              );
            } else {
              return Container(); // Handle other states if necessary
            }
          },
        ),
      ),
    );
  }
}
