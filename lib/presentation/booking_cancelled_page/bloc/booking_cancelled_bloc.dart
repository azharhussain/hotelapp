import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/bookingcancelledlist_item_model.dart';
import 'package:hotelapp/presentation/booking_cancelled_page/models/booking_cancelled_model.dart';
part 'booking_cancelled_event.dart';
part 'booking_cancelled_state.dart';

/// A bloc that manages the state of a BookingCancelled according to the event that is dispatched to it.
class BookingCancelledBloc
    extends Bloc<BookingCancelledEvent, BookingCancelledState> {
  BookingCancelledBloc(BookingCancelledState initialState)
      : super(initialState) {
    on<BookingCancelledInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookingCancelledInitialEvent event,
    Emitter<BookingCancelledState> emit,
  ) async {
    emit(state.copyWith(
        bookingCancelledModelObj: state.bookingCancelledModelObj?.copyWith(
      bookingcancelledlistItemList: fillBookingcancelledlistItemList(),
    )));
  }

  List<BookingcancelledlistItemModel> fillBookingcancelledlistItemList() {
    return [
      BookingcancelledlistItemModel(
          palmsCasinoResort: ImageConstant.imgRectangle4100x100,
          palmsCasinoResort1: "Palms Casino Resort",
          londonUnitedKingdom: "London, United Kingdom",
          youCanceledThis: "You canceled this hotel booking"),
      BookingcancelledlistItemModel(
          palmsCasinoResort: ImageConstant.imgRectangle,
          palmsCasinoResort1: "The Mark Hotel",
          londonUnitedKingdom: "Luxemburg, Germany",
          youCanceledThis: "You canceled this hotel booking")
    ];
  }
}
