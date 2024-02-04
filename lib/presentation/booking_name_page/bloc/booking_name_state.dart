// ignore_for_file: must_be_immutable

part of 'booking_name_bloc.dart';

/// Represents the state of BookingName in the application.
class BookingNameState extends Equatable {
  BookingNameState({
    this.labelController,
    this.labelController1,
    this.dateController,
    this.emailController,
    this.phoneController,
    this.bookingNameModelObj,
  });

  TextEditingController? labelController;

  TextEditingController? labelController1;

  TextEditingController? dateController;

  TextEditingController? emailController;

  TextEditingController? phoneController;

  BookingNameModel? bookingNameModelObj;

  @override
  List<Object?> get props => [
        labelController,
        labelController1,
        dateController,
        emailController,
        phoneController,
        bookingNameModelObj,
      ];
  BookingNameState copyWith({
    TextEditingController? labelController,
    TextEditingController? labelController1,
    TextEditingController? dateController,
    TextEditingController? emailController,
    TextEditingController? phoneController,
    BookingNameModel? bookingNameModelObj,
  }) {
    return BookingNameState(
      labelController: labelController ?? this.labelController,
      labelController1: labelController1 ?? this.labelController1,
      dateController: dateController ?? this.dateController,
      emailController: emailController ?? this.emailController,
      phoneController: phoneController ?? this.phoneController,
      bookingNameModelObj: bookingNameModelObj ?? this.bookingNameModelObj,
    );
  }
}
