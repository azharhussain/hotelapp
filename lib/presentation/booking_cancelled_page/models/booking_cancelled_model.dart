// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'bookingcancelledlist_item_model.dart';/// This class defines the variables used in the [booking_cancelled_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingCancelledModel extends Equatable {BookingCancelledModel({this.bookingcancelledlistItemList = const []}) {  }

List<BookingcancelledlistItemModel> bookingcancelledlistItemList;

BookingCancelledModel copyWith({List<BookingcancelledlistItemModel>? bookingcancelledlistItemList}) { return BookingCancelledModel(
bookingcancelledlistItemList : bookingcancelledlistItemList ?? this.bookingcancelledlistItemList,
); } 
@override List<Object?> get props => [bookingcancelledlistItemList];
 }
