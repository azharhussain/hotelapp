// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'rectangle_item_model.dart';import 'framenineteen_item_model.dart';/// This class defines the variables used in the [hotel_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelDetailsModel extends Equatable {HotelDetailsModel({this.rectangleItemList = const [], this.framenineteenItemList = const [], }) {  }

List<RectangleItemModel> rectangleItemList;

List<FramenineteenItemModel> framenineteenItemList;

HotelDetailsModel copyWith({List<RectangleItemModel>? rectangleItemList, List<FramenineteenItemModel>? framenineteenItemList, }) { return HotelDetailsModel(
rectangleItemList : rectangleItemList ?? this.rectangleItemList,
framenineteenItemList : framenineteenItemList ?? this.framenineteenItemList,
); } 
@override List<Object?> get props => [rectangleItemList,framenineteenItemList];
 }
