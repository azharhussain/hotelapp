// ignore_for_file: must_be_immutable

part of 'let_s_you_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LetSYouIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LetSYouInEvent extends Equatable {}

/// Event that is dispatched when the LetSYouIn widget is first created.
class LetSYouInInitialEvent extends LetSYouInEvent {
  @override
  List<Object?> get props => [];
}
