// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.labelController,
    this.labelController1,
    this.dateController,
    this.emailController,
    this.folderController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.editProfileModelObj,
  });

  TextEditingController? labelController;

  TextEditingController? labelController1;

  TextEditingController? dateController;

  TextEditingController? emailController;

  TextEditingController? folderController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        labelController,
        labelController1,
        dateController,
        emailController,
        folderController,
        selectedDropDownValue,
        selectedDropDownValue1,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? labelController,
    TextEditingController? labelController1,
    TextEditingController? dateController,
    TextEditingController? emailController,
    TextEditingController? folderController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      labelController: labelController ?? this.labelController,
      labelController1: labelController1 ?? this.labelController1,
      dateController: dateController ?? this.dateController,
      emailController: emailController ?? this.emailController,
      folderController: folderController ?? this.folderController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
