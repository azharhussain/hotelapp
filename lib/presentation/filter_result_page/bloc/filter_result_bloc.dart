import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/filterresult_item_model.dart';
import 'package:hotelapp/presentation/filter_result_page/models/filter_result_model.dart';
part 'filter_result_event.dart';
part 'filter_result_state.dart';

/// A bloc that manages the state of a FilterResult according to the event that is dispatched to it.
class FilterResultBloc extends Bloc<FilterResultEvent, FilterResultState> {
  FilterResultBloc(FilterResultState initialState) : super(initialState) {
    on<FilterResultInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FilterResultInitialEvent event,
    Emitter<FilterResultState> emit,
  ) async {
    emit(state.copyWith(
        filterResultModelObj: state.filterResultModelObj?.copyWith(
      filterresultItemList: fillFilterresultItemList(),
    )));
  }

  List<FilterresultItemModel> fillFilterresultItemList() {
    return [
      FilterresultItemModel(
          presidentHotel: ImageConstant.imgRectangle4100x100,
          presidentHotel1: "President Hotel",
          parisFrance: "Paris, France",
          fortyEight: "4.8",
          reviews: "(4,378 reviews)",
          price: "35",
          night: "/ night"),
      FilterresultItemModel(
          presidentHotel: ImageConstant.imgRectangle41,
          presidentHotel1: "Palms Casino",
          parisFrance: "Paris, France",
          fortyEight: "4.8",
          reviews: "(4,378 reviews)",
          price: "29",
          night: "/ night"),
      FilterresultItemModel(
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
