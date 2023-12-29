// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.editProfileLabel1Controller,
    this.editProfileLabel2Controller,
    this.editProfileDateController,
    this.editProfileEmailController,
    this.editProfileFolderController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.editProfileModelObj,
  });

  TextEditingController? editProfileLabel1Controller;

  TextEditingController? editProfileLabel2Controller;

  TextEditingController? editProfileDateController;

  TextEditingController? editProfileEmailController;

  TextEditingController? editProfileFolderController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        editProfileLabel1Controller,
        editProfileLabel2Controller,
        editProfileDateController,
        editProfileEmailController,
        editProfileFolderController,
        selectedDropDownValue,
        selectedDropDownValue1,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? editProfileLabel1Controller,
    TextEditingController? editProfileLabel2Controller,
    TextEditingController? editProfileDateController,
    TextEditingController? editProfileEmailController,
    TextEditingController? editProfileFolderController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      editProfileLabel1Controller:
          editProfileLabel1Controller ?? this.editProfileLabel1Controller,
      editProfileLabel2Controller:
          editProfileLabel2Controller ?? this.editProfileLabel2Controller,
      editProfileDateController:
          editProfileDateController ?? this.editProfileDateController,
      editProfileEmailController:
          editProfileEmailController ?? this.editProfileEmailController,
      editProfileFolderController:
          editProfileFolderController ?? this.editProfileFolderController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
