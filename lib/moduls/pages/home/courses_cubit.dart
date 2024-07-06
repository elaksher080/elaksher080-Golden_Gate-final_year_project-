import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:golden_gate/model/courses_model.dart';

import 'package:golden_gate/moduls/pages/home/state.dart';

class CoursesCubit extends Cubit<GetCoursesState> {
  CoursesCubit() : super(GetCoursesInitial());

  Future<void> getCourses() async {
    emit(GetCoursesLoading());

    try {
      final response = await Dio().get('https://learning-gate.onrender.com/api/v1/courses');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data'];
        print("Data from server: $data");

        final courses = CoursesModel.fromJson(response.data);
        emit(GetCoursesSuccess(response: courses));
      } else {
        throw Exception('Failed to load courses');
      }
    } catch (error) {
      emit(GetCoursesError());
      print('Error loading courses: $error');
    }
  }
}
