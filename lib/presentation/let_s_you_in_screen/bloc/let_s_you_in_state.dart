// ignore_for_file: must_be_immutable

part of 'let_s_you_in_bloc.dart';

/// Represents the state of LetSYouIn in the application.
class LetSYouInState extends Equatable {
  LetSYouInState({this.letSYouInModelObj});

  LetSYouInModel? letSYouInModelObj;

  @override
  List<Object?> get props => [
        letSYouInModelObj,
      ];
  LetSYouInState copyWith({LetSYouInModel? letSYouInModelObj}) {
    return LetSYouInState(
      letSYouInModelObj: letSYouInModelObj ?? this.letSYouInModelObj,
    );
  }
}
