// ignore_for_file: must_be_immutable

part of 'add_new_card_bloc.dart';

/// Represents the state of AddNewCard in the application.
class AddNewCardState extends Equatable {
  AddNewCardState({
    this.nameEditTextController,
    this.numberEditTextController,
    this.expiryDateEditTextController,
    this.cvvEditTextController,
    this.addNewCardModelObj,
  });

  TextEditingController? nameEditTextController;

  TextEditingController? numberEditTextController;

  TextEditingController? expiryDateEditTextController;

  TextEditingController? cvvEditTextController;

  AddNewCardModel? addNewCardModelObj;

  @override
  List<Object?> get props => [
        nameEditTextController,
        numberEditTextController,
        expiryDateEditTextController,
        cvvEditTextController,
        addNewCardModelObj,
      ];
  AddNewCardState copyWith({
    TextEditingController? nameEditTextController,
    TextEditingController? numberEditTextController,
    TextEditingController? expiryDateEditTextController,
    TextEditingController? cvvEditTextController,
    AddNewCardModel? addNewCardModelObj,
  }) {
    return AddNewCardState(
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      numberEditTextController:
          numberEditTextController ?? this.numberEditTextController,
      expiryDateEditTextController:
          expiryDateEditTextController ?? this.expiryDateEditTextController,
      cvvEditTextController:
          cvvEditTextController ?? this.cvvEditTextController,
      addNewCardModelObj: addNewCardModelObj ?? this.addNewCardModelObj,
    );
  }
}
