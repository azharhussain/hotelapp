// ignore_for_file: must_be_immutable

part of 'my_bookmarks_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyBookmarks widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyBookmarksEvent extends Equatable {}

/// Event that is dispatched when the MyBookmarks widget is first created.
class MyBookmarksInitialEvent extends MyBookmarksEvent {
  @override
  List<Object?> get props => [];
}
