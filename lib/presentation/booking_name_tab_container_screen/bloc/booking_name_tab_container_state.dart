// ignore_for_file: must_be_immutable

part of 'booking_name_tab_container_bloc.dart';

/// Represents the state of BookingNameTabContainer in the application.
class BookingNameTabContainerState extends Equatable {
  BookingNameTabContainerState({this.bookingNameTabContainerModelObj});

  BookingNameTabContainerModel? bookingNameTabContainerModelObj;

  @override
  List<Object?> get props => [
        bookingNameTabContainerModelObj,
      ];
  BookingNameTabContainerState copyWith(
      {BookingNameTabContainerModel? bookingNameTabContainerModelObj}) {
    return BookingNameTabContainerState(
      bookingNameTabContainerModelObj: bookingNameTabContainerModelObj ??
          this.bookingNameTabContainerModelObj,
    );
  }
}
