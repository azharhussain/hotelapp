// ignore_for_file: must_be_immutable

part of 'fill_profile_bloc.dart';

/// Represents the state of FillProfile in the application.
class FillProfileState extends Equatable {
  FillProfileState({
    this.fullNameController,
    this.nameController,
    this.dateOfBirthController,
    this.emailController,
    this.phoneNumberController,
    this.selectedDropDownValue,
    this.fillProfileModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  FillProfileModel? fillProfileModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        nameController,
        dateOfBirthController,
        emailController,
        phoneNumberController,
        selectedDropDownValue,
        fillProfileModelObj,
      ];
  FillProfileState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    FillProfileModel? fillProfileModelObj,
  }) {
    return FillProfileState(
      fullNameController: fullNameController ?? this.fullNameController,
      nameController: nameController ?? this.nameController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      fillProfileModelObj: fillProfileModelObj ?? this.fillProfileModelObj,
    );
  }
}
