// ignore_for_file: must_be_immutable

part of 'booking_ongoing_bloc.dart';

/// Represents the state of BookingOngoing in the application.
class BookingOngoingState extends Equatable {
  BookingOngoingState({this.bookingOngoingModelObj});

  BookingOngoingModel? bookingOngoingModelObj;

  @override
  List<Object?> get props => [
        bookingOngoingModelObj,
      ];
  BookingOngoingState copyWith({BookingOngoingModel? bookingOngoingModelObj}) {
    return BookingOngoingState(
      bookingOngoingModelObj:
          bookingOngoingModelObj ?? this.bookingOngoingModelObj,
    );
  }
}
