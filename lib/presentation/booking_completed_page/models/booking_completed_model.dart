// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'bookingcompleted_item_model.dart';/// This class defines the variables used in the [booking_completed_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingCompletedModel extends Equatable {BookingCompletedModel({this.bookingcompletedItemList = const []}) {  }

List<BookingcompletedItemModel> bookingcompletedItemList;

BookingCompletedModel copyWith({List<BookingcompletedItemModel>? bookingcompletedItemList}) { return BookingCompletedModel(
bookingcompletedItemList : bookingcompletedItemList ?? this.bookingcompletedItemList,
); } 
@override List<Object?> get props => [bookingcompletedItemList];
 }
