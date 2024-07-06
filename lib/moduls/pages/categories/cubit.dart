import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:golden_gate/model/popular_model.dart';
import 'package:golden_gate/moduls/pages/categories/state%20(2).dart';


class GetPopularCoursesCubit extends Cubit<GetPopularCoursesState> {
  GetPopularCoursesCubit() : super(GetPopularCoursesInitial());

  Future<void> getPopularCourses() async {
    emit(GetPopularCoursesLoading());

    try {
      final response = await Dio().get('https://learning-gate.onrender.com/api/v1/courses/popular');

      if (response.statusCode == 200) {
        final courses = PopularModel.fromJson(response.data);
        emit(GetPopularCoursesSuccess(response: courses));
      } else {
        throw Exception('Failed to load courses');
      }
    } catch (error) {
      emit(GetPopularCoursesError());
      print('Error loading courses: $error');
    }
  }
}
