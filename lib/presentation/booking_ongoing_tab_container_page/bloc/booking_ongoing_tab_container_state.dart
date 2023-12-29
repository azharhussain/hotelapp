// ignore_for_file: must_be_immutable

part of 'booking_ongoing_tab_container_bloc.dart';

/// Represents the state of BookingOngoingTabContainer in the application.
class BookingOngoingTabContainerState extends Equatable {
  BookingOngoingTabContainerState({this.bookingOngoingTabContainerModelObj});

  BookingOngoingTabContainerModel? bookingOngoingTabContainerModelObj;

  @override
  List<Object?> get props => [
        bookingOngoingTabContainerModelObj,
      ];
  BookingOngoingTabContainerState copyWith(
      {BookingOngoingTabContainerModel? bookingOngoingTabContainerModelObj}) {
    return BookingOngoingTabContainerState(
      bookingOngoingTabContainerModelObj: bookingOngoingTabContainerModelObj ??
          this.bookingOngoingTabContainerModelObj,
    );
  }
}
