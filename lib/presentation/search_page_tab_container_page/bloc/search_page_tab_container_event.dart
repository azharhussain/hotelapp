// ignore_for_file: must_be_immutable

part of 'search_page_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchPageTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchPageTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SearchPageTabContainer widget is first created.
class SearchPageTabContainerInitialEvent extends SearchPageTabContainerEvent {
  @override
  List<Object?> get props => [];
}
