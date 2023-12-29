import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/bookingcompletedlist_item_model.dart';
import 'package:hotelapp/presentation/booking_completed_page/models/booking_completed_model.dart';
part 'booking_completed_event.dart';
part 'booking_completed_state.dart';

/// A bloc that manages the state of a BookingCompleted according to the event that is dispatched to it.
class BookingCompletedBloc
    extends Bloc<BookingCompletedEvent, BookingCompletedState> {
  BookingCompletedBloc(BookingCompletedState initialState)
      : super(initialState) {
    on<BookingCompletedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookingCompletedInitialEvent event,
    Emitter<BookingCompletedState> emit,
  ) async {
    emit(state.copyWith(
        bookingCompletedModelObj: state.bookingCompletedModelObj?.copyWith(
      bookingcompletedlistItemList: fillBookingcompletedlistItemList(),
    )));
  }

  List<BookingcompletedlistItemModel> fillBookingcompletedlistItemList() {
    return [
      BookingcompletedlistItemModel(
          bulgariResort: ImageConstant.imgRectangle4100x100,
          bulgariResort1: "Bulgari Resort",
          parisFrance: "Paris, France",
          yeayyouhavecompletedit: "Yeay, you have completed it!"),
      BookingcompletedlistItemModel(
          bulgariResort: ImageConstant.imgRectangle,
          bulgariResort1: "Hotel Martinez Cannes",
          parisFrance: "Amsterdam, Netherlands",
          yeayyouhavecompletedit: "Yeay, you have completed it!")
    ];
  }
}
