// ignore_for_file: must_be_immutable

part of 'fill_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FillProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FillProfileEvent extends Equatable {}

/// Event that is dispatched when the FillProfile widget is first created.
class FillProfileInitialEvent extends FillProfileEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends FillProfileEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
