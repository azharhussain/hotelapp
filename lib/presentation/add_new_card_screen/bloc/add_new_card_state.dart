// ignore_for_file: must_be_immutable

part of 'add_new_card_bloc.dart';

/// Represents the state of AddNewCard in the application.
class AddNewCardState extends Equatable {
  AddNewCardState({
    this.nameController,
    this.numberController,
    this.expiryDateController,
    this.cvvController,
    this.addNewCardModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? numberController;

  TextEditingController? expiryDateController;

  TextEditingController? cvvController;

  AddNewCardModel? addNewCardModelObj;

  @override
  List<Object?> get props => [
        nameController,
        numberController,
        expiryDateController,
        cvvController,
        addNewCardModelObj,
      ];
  AddNewCardState copyWith({
    TextEditingController? nameController,
    TextEditingController? numberController,
    TextEditingController? expiryDateController,
    TextEditingController? cvvController,
    AddNewCardModel? addNewCardModelObj,
  }) {
    return AddNewCardState(
      nameController: nameController ?? this.nameController,
      numberController: numberController ?? this.numberController,
      expiryDateController: expiryDateController ?? this.expiryDateController,
      cvvController: cvvController ?? this.cvvController,
      addNewCardModelObj: addNewCardModelObj ?? this.addNewCardModelObj,
    );
  }
}
