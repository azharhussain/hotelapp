// ignore_for_file: must_be_immutable

part of 'select_date_guest_bloc.dart';

/// Represents the state of SelectDateGuest in the application.
class SelectDateGuestState extends Equatable {
  SelectDateGuestState({
    this.decCounterController,
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.selectDateGuestModelObj,
  });

  TextEditingController? decCounterController;

  SelectDateGuestModel? selectDateGuestModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode;

  @override
  List<Object?> get props => [
        decCounterController,
        rangeStart,
        rangeEnd,
        selectedDay,
        focusedDay,
        rangeSelectionMode,
        selectDateGuestModelObj,
      ];
  SelectDateGuestState copyWith({
    TextEditingController? decCounterController,
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    SelectDateGuestModel? selectDateGuestModelObj,
  }) {
    return SelectDateGuestState(
      decCounterController: decCounterController ?? this.decCounterController,
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      selectDateGuestModelObj:
          selectDateGuestModelObj ?? this.selectDateGuestModelObj,
    );
  }
}
