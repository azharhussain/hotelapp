// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'bookingongoing_item_model.dart';/// This class defines the variables used in the [booking_ongoing_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingOngoingModel extends Equatable {BookingOngoingModel({this.bookingongoingItemList = const []}) {  }

List<BookingongoingItemModel> bookingongoingItemList;

BookingOngoingModel copyWith({List<BookingongoingItemModel>? bookingongoingItemList}) { return BookingOngoingModel(
bookingongoingItemList : bookingongoingItemList ?? this.bookingongoingItemList,
); } 
@override List<Object?> get props => [bookingongoingItemList];
 }
