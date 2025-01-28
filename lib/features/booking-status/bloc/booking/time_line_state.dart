part of 'time_line_bloc.dart';

@immutable
abstract class TimelineState {}

class TimelineInitial extends TimelineState {}

class TimelineLoading extends TimelineState {}

class TimelineLoaded extends TimelineState {
  final List<TimelineEntry> entries;

  TimelineLoaded(this.entries);
}

class TimelineError extends TimelineState {}
