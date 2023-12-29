// ignore_for_file: must_be_immutable

part of 'booking_completed_bloc.dart';

/// Represents the state of BookingCompleted in the application.
class BookingCompletedState extends Equatable {
  BookingCompletedState({this.bookingCompletedModelObj});

  BookingCompletedModel? bookingCompletedModelObj;

  @override
  List<Object?> get props => [
        bookingCompletedModelObj,
      ];
  BookingCompletedState copyWith(
      {BookingCompletedModel? bookingCompletedModelObj}) {
    return BookingCompletedState(
      bookingCompletedModelObj:
          bookingCompletedModelObj ?? this.bookingCompletedModelObj,
    );
  }
}
