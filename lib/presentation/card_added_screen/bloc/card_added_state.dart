// ignore_for_file: must_be_immutable

part of 'card_added_bloc.dart';

/// Represents the state of CardAdded in the application.
class CardAddedState extends Equatable {
  CardAddedState({
    this.radioGroup = "",
    this.cardAddedModelObj,
  });

  CardAddedModel? cardAddedModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        cardAddedModelObj,
      ];
  CardAddedState copyWith({
    String? radioGroup,
    CardAddedModel? cardAddedModelObj,
  }) {
    return CardAddedState(
      radioGroup: radioGroup ?? this.radioGroup,
      cardAddedModelObj: cardAddedModelObj ?? this.cardAddedModelObj,
    );
  }
}
