// ignore_for_file: must_be_immutable

part of 'add_new_card_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddNewCard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddNewCardEvent extends Equatable {}

/// Event that is dispatched when the AddNewCard widget is first created.
class AddNewCardInitialEvent extends AddNewCardEvent {
  @override
  List<Object?> get props => [];
}
