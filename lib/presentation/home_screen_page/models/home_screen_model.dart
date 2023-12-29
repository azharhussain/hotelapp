// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'hotelslist_item_model.dart';import 'martinezcannes_item_model.dart';/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel extends Equatable {HomeScreenModel({this.hotelslistItemList = const [], this.martinezcannesItemList = const [], }) {  }

List<HotelslistItemModel> hotelslistItemList;

List<MartinezcannesItemModel> martinezcannesItemList;

HomeScreenModel copyWith({List<HotelslistItemModel>? hotelslistItemList, List<MartinezcannesItemModel>? martinezcannesItemList, }) { return HomeScreenModel(
hotelslistItemList : hotelslistItemList ?? this.hotelslistItemList,
martinezcannesItemList : martinezcannesItemList ?? this.martinezcannesItemList,
); } 
@override List<Object?> get props => [hotelslistItemList,martinezcannesItemList];
 }
