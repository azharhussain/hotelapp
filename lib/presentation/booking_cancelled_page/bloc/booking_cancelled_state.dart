// ignore_for_file: must_be_immutable

part of 'booking_cancelled_bloc.dart';

/// Represents the state of BookingCancelled in the application.
class BookingCancelledState extends Equatable {
  BookingCancelledState({this.bookingCancelledModelObj});

  BookingCancelledModel? bookingCancelledModelObj;

  @override
  List<Object?> get props => [
        bookingCancelledModelObj,
      ];
  BookingCancelledState copyWith(
      {BookingCancelledModel? bookingCancelledModelObj}) {
    return BookingCancelledState(
      bookingCancelledModelObj:
          bookingCancelledModelObj ?? this.bookingCancelledModelObj,
    );
  }
}
