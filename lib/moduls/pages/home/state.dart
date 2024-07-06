// Define the states
import 'package:golden_gate/model/courses_model.dart';

abstract class GetCoursesState {}

class GetCoursesInitial extends GetCoursesState {}

class GetCoursesLoading extends GetCoursesState {}

class GetCoursesSuccess extends GetCoursesState {
  final CoursesModel response;
  GetCoursesSuccess({required this.response});
}

class GetCoursesError extends GetCoursesState {}
