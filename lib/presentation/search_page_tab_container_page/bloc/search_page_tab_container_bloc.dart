import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hotelapp/presentation/search_page_tab_container_page/models/search_page_tab_container_model.dart';
part 'search_page_tab_container_event.dart';
part 'search_page_tab_container_state.dart';

/// A bloc that manages the state of a SearchPageTabContainer according to the event that is dispatched to it.
class SearchPageTabContainerBloc
    extends Bloc<SearchPageTabContainerEvent, SearchPageTabContainerState> {
  SearchPageTabContainerBloc(SearchPageTabContainerState initialState)
      : super(initialState) {
    on<SearchPageTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchPageTabContainerInitialEvent event,
    Emitter<SearchPageTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
