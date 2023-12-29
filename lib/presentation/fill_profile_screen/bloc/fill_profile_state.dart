// ignore_for_file: must_be_immutable

part of 'fill_profile_bloc.dart';

/// Represents the state of FillProfile in the application.
class FillProfileState extends Equatable {
  FillProfileState({
    this.fullNameEditTextController,
    this.nameEditTextController,
    this.dateOfBirthEditTextController,
    this.emailEditTextController,
    this.phoneNumberEditTextController,
    this.selectedDropDownValue,
    this.fillProfileModelObj,
  });

  TextEditingController? fullNameEditTextController;

  TextEditingController? nameEditTextController;

  TextEditingController? dateOfBirthEditTextController;

  TextEditingController? emailEditTextController;

  TextEditingController? phoneNumberEditTextController;

  SelectionPopupModel? selectedDropDownValue;

  FillProfileModel? fillProfileModelObj;

  @override
  List<Object?> get props => [
        fullNameEditTextController,
        nameEditTextController,
        dateOfBirthEditTextController,
        emailEditTextController,
        phoneNumberEditTextController,
        selectedDropDownValue,
        fillProfileModelObj,
      ];
  FillProfileState copyWith({
    TextEditingController? fullNameEditTextController,
    TextEditingController? nameEditTextController,
    TextEditingController? dateOfBirthEditTextController,
    TextEditingController? emailEditTextController,
    TextEditingController? phoneNumberEditTextController,
    SelectionPopupModel? selectedDropDownValue,
    FillProfileModel? fillProfileModelObj,
  }) {
    return FillProfileState(
      fullNameEditTextController:
          fullNameEditTextController ?? this.fullNameEditTextController,
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      dateOfBirthEditTextController:
          dateOfBirthEditTextController ?? this.dateOfBirthEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      phoneNumberEditTextController:
          phoneNumberEditTextController ?? this.phoneNumberEditTextController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      fillProfileModelObj: fillProfileModelObj ?? this.fillProfileModelObj,
    );
  }
}
