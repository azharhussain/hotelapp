import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchpage_item_model.dart';
import 'package:hotelapp/presentation/search_page/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
      searchpageItemList: fillSearchpageItemList(),
    )));
  }

  List<SearchpageItemModel> fillSearchpageItemList() {
    return [
      SearchpageItemModel(
          presidentHotel: ImageConstant.imgRectangle4100x100,
          presidentHotel1: "President Hotel",
          parisFrance: "Paris, France",
          fortyEight: "4.8",
          reviews: "(4,378 reviews)",
          price: "35",
          night: "/ night"),
      SearchpageItemModel(
          presidentHotel: ImageConstant.imgRectangle41,
          presidentHotel1: "Palms Casino",
          parisFrance: "Paris, France",
          fortyEight: "4.8",
          reviews: "(4,378 reviews)",
          price: "29",
          night: "/ night"),
      SearchpageItemModel(
          presidentHotel: ImageConstant.imgRectangle43,
          presidentHotel1: "Bulgari Resort",
          parisFrance: "Paris, France",
          fortyEight: "4.8",
          reviews: "(4,378 reviews)",
          price: "27",
          night: "/ night")
    ];
  }
}
