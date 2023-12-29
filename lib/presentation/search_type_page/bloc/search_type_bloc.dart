import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchtype_item_model.dart';
import 'package:hotelapp/presentation/search_type_page/models/search_type_model.dart';
part 'search_type_event.dart';
part 'search_type_state.dart';

/// A bloc that manages the state of a SearchType according to the event that is dispatched to it.
class SearchTypeBloc extends Bloc<SearchTypeEvent, SearchTypeState> {
  SearchTypeBloc(SearchTypeState initialState) : super(initialState) {
    on<SearchTypeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchTypeInitialEvent event,
    Emitter<SearchTypeState> emit,
  ) async {
    emit(state.copyWith(
        searchTypeModelObj: state.searchTypeModelObj?.copyWith(
      searchtypeItemList: fillSearchtypeItemList(),
    )));
  }

  List<SearchtypeItemModel> fillSearchtypeItemList() {
    return [
      SearchtypeItemModel(amsterdamNetherlands: "Amsterdam, Netherlands"),
      SearchtypeItemModel(amsterdamNetherlands: "Palazzo Hotel"),
      SearchtypeItemModel(amsterdamNetherlands: "Bulgari Hotel"),
      SearchtypeItemModel(amsterdamNetherlands: "Martinez Cannes Hotel"),
      SearchtypeItemModel(amsterdamNetherlands: "London, United Kingdom"),
      SearchtypeItemModel(amsterdamNetherlands: "Palms Casino Hotel")
    ];
  }
}
