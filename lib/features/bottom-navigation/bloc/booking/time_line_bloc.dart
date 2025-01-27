import 'package:bloc/bloc.dart';
import 'package:maid_service/features/bottom-navigation/data/model/TimeLineEntry.dart';
import 'package:meta/meta.dart';

part 'time_line_event.dart';
part 'time_line_state.dart';

class TimeLineBloc extends Bloc<TimeLineEvent, TimelineState> {
  TimeLineBloc() : super(TimelineInitial()) {
    on<LoadTimeline>((event, emit) {
      emit(TimelineInitial());
      final entries = [
        TimelineEntry(
            date: "Oct 23, 2024\n04:17 pm",
            description: "Working",
            isCompleted: false),
        TimelineEntry(
            date: "Oct 23, 2024\n10:00 am",
            description: "Job Started",
            isCompleted: false),
        TimelineEntry(
            date: "Oct 23, 2024\n09:30 am",
            description: "Cleaner On The Way",
            isCompleted: true),
        TimelineEntry(
            date: "Oct 23, 2024\n08:30 am",
            description: "Assigned To Jesse Welch Has Accepted Your Request.",
            isCompleted: true),
        TimelineEntry(
            date: "Oct 23, 2024\n08:00 am",
            description: "Cleaner Accepted",
            isCompleted: true),
        TimelineEntry(
            date: "Oct 22, 2024\n04:17 pm",
            description: "Cleaner Requested",
            isCompleted: true),
      ];
emit(TimelineLoaded(entries));
      // TODO: implement event handler
    });
  }
}
