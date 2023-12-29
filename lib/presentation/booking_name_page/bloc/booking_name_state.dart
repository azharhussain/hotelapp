// ignore_for_file: must_be_immutable

part of 'booking_name_bloc.dart';

/// Represents the state of BookingName in the application.
class BookingNameState extends Equatable {
  BookingNameState({
    this.editTextLabelController,
    this.editTextLabelController1,
    this.editTextDateController,
    this.editTextEmailController,
    this.editTextPhoneController,
    this.bookingNameModelObj,
  });

  TextEditingController? editTextLabelController;

  TextEditingController? editTextLabelController1;

  TextEditingController? editTextDateController;

  TextEditingController? editTextEmailController;

  TextEditingController? editTextPhoneController;

  BookingNameModel? bookingNameModelObj;

  @override
  List<Object?> get props => [
        editTextLabelController,
        editTextLabelController1,
        editTextDateController,
        editTextEmailController,
        editTextPhoneController,
        bookingNameModelObj,
      ];
  BookingNameState copyWith({
    TextEditingController? editTextLabelController,
    TextEditingController? editTextLabelController1,
    TextEditingController? editTextDateController,
    TextEditingController? editTextEmailController,
    TextEditingController? editTextPhoneController,
    BookingNameModel? bookingNameModelObj,
  }) {
    return BookingNameState(
      editTextLabelController:
          editTextLabelController ?? this.editTextLabelController,
      editTextLabelController1:
          editTextLabelController1 ?? this.editTextLabelController1,
      editTextDateController:
          editTextDateController ?? this.editTextDateController,
      editTextEmailController:
          editTextEmailController ?? this.editTextEmailController,
      editTextPhoneController:
          editTextPhoneController ?? this.editTextPhoneController,
      bookingNameModelObj: bookingNameModelObj ?? this.bookingNameModelObj,
    );
  }
}
