part of 'time_line_bloc.dart';

@immutable
sealed class TimeLineEvent {}
class LoadTimeline extends TimeLineEvent {}
