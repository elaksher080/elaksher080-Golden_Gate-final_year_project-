import 'package:golden_gate/model/popular_model.dart';

class GetPopularCoursesState {
}

class GetPopularCoursesInitial extends GetPopularCoursesState {}

class GetPopularCoursesLoading extends GetPopularCoursesState {}

class GetPopularCoursesSuccess extends GetPopularCoursesState {
  final PopularModel response;
  GetPopularCoursesSuccess({required this.response});
}

class GetPopularCoursesError extends GetPopularCoursesState {}
